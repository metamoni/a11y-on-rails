feature 'validations page', js: true do
  scenario 'is accessible' do
    visit validations_path
    expect(page).to be_axe_clean.excluding('iframe')
  end
end
