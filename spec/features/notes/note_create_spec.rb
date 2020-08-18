include Warden::Test::Helpers
Warden.test_mode!

feature 'Note create', :devise do
  scenario 'can be created' do
    user = FactoryBot.create(:user)
    login_as(user, :scope => :user)

    visit new_note_path
    fill_in :note_content, with: 'hello'

    click_button 'save'

    expect(page.body).to inculde('hello')
  end
end