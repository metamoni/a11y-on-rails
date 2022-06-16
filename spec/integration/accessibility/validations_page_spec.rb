feature 'validations page', js: true do
  scenario 'is accessible' do
    visit validations_path
    expect(page).to be_axe_clean.excluding(
      '#file-validation_with_aria_live-html-erb',
      '#file-validation_with_role-html-erb'
    )
  end
end
