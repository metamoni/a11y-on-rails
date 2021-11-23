feature 'welcome', js: true do
  scenario 'index is accessible' do
    visit root_path
    expect(page).to be_axe_clean
  end
end
