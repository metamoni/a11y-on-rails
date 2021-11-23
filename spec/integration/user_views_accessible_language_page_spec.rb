feature 'language page', js: true do
  scenario 'is accessible' do
    visit language_path
    expect(page).to be_axe_clean
  end
end
