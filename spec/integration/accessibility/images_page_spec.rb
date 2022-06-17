feature 'images page', js: true do
  scenario 'is accessible' do
    visit images_path
    expect(page).to be_axe_clean.excluding('iframe')
  end
end
