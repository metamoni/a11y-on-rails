RSpec.describe 'Visit Images page', type: :feature do
  before { visit images_path }

  it 'displays the correct heading level' do
    expect(page.find('h1')).to have_text 'Accessible images'
  end

  it 'displays the "Back" link in the footer' do
    expect(page.find('footer')).to have_text 'Back to homepage'
  end
end
