feature 'flash messages page', js: true do
  scenario 'is accessible' do
    visit flash_messages_path
    expect(page).to be_axe_clean
  end
end
