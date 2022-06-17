feature 'forms page', js: true do
  scenario 'is accessible' do
    visit forms_path
    expect(page).to be_axe_clean.excluding(".inaccessible-form", "iframe")
  end
end
