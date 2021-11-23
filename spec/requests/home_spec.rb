RSpec.describe HomeController, type: :request do
  describe "GET /index" do
    before { get root_path }
    subject { response }
    
    it { is_expected.to be_successful }
  end

  describe "GET /images" do
    before { get images_path }
    subject { response }
    
    it { is_expected.to be_successful }
  end

  describe "GET /forms" do
    before { get forms_path }
    subject { response }
    
    it { is_expected.to be_successful }
  end

  describe "GET /links-buttons" do
    before { get links_buttons_path }
    subject { response }
    
    it { is_expected.to be_successful }
  end
end
