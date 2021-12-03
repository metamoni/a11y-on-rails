describe SvgHelper do
  include SvgHelper

  describe '#inline_svg' do
    subject { inline_svg(svg, options) }
    let(:svg) do
      '<svg viewBox="0 0 10 20"><circle cx="50" cy="50" r="50"/></svg>'
    end
    let(:parsed_file) { Nokogiri::HTML::DocumentFragment.parse(svg) }

    before do
      allow(File).to receive(:read).and_return(parsed_file)
    end

    context "when no options are passed" do
      let(:options) { {} }

      it "returns svg with a role of presentation" do
        expect(subject).to include 'role="presentation"'
      end
    end
    
    context "when options are passed" do
      let(:options) { { title: 'test', style: 'background-color:Blue' } }
      
      it "returns svg with a role of img" do
        expect(subject).to include 'role="img"'
      end

      it "adds a title" do
        expect(subject).to include "<title>test</title>"
      end

      it "updates svg styles" do
        expect(subject).to include 'style="background-color:Blue"'
      end
    end
  end
end
