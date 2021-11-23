RSpec.describe 'Visit homepage', type: :feature do
  it 'displays the homepage' do
    visit root_path
    expect(page.find('h1')).to have_text 'Welcome to A11y on Rails'
  end

  it 'contains links to all topics' do
    visit root_path

    expect(page).to have_link('Images')
    expect(page).to have_link('Forms')
    expect(page).to have_link('Validations')
    expect(page).to have_link('Links and buttons')
    expect(page).to have_link('i18n and document language')
    expect(page).to have_link('Flash messages')
    expect(page).to have_link('Tables')
    expect(page).to have_link('Navigation')
    expect(page).to have_link('Page structure')
    expect(page).to have_link('Semantic HMTL and ARIA')
  end

  it 'allows navigation by topic' do
    visit root_path

    click_link 'Images'
    expect(page).to have_current_path(images_path)

    click_link 'Home'

    click_link 'Forms'
    expect(page).to have_current_path(forms_path)
  end
end
