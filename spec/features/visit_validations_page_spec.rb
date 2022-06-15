RSpec.describe 'Visit Validations page', type: :feature do
  before { visit validations_path }

  it 'displays the correct heading level' do
    expect(page.find('h1')).to have_text 'Accessible form validation'
  end

  it 'displays the page contents' do
    expect(page.all('h2')[0]).to have_text 'Contents'
  end

  it 'displays the correct headings', :aggregate_failures do
    expect(page.all('h2')[1]).to have_text 'The problem'
    expect(page.all('h2')[2]).to have_text 'ARIA live regions'
    expect(page.all('h2')[3]).to have_text 'Validation with HTML'
    expect(page.all('h2')[4]).to have_text 'Try it yourself'
    expect(page.all('h2')[5]).to have_text 'Custom form validation'
    expect(page.all('h2')[6]).to have_text 'Resources'
  end

  it 'displays the "Back" link in the footer' do
    expect(page.find('footer')).to have_text 'Back to homepage'
  end
end
