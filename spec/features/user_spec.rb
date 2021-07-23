require 'rails_helper'

RSpec.feature 'Users', type: :system do
  describe 'Navigate the webpage' do
    it 'creates a new user and logs in' do
      visit new_user_registration_path
      
      fill_in 'Username', with: 'user9'
      click_on 'Sign up'
      expect(page).to have_content('Welcome! You have signed up successfully.')
    end

    it 'does not login user with blank username' do
      visit new_user_session_path
      fill_in 'Username', with: ' '
      click_on 'Log in'
      expect(page).to have_content('Invalid Username or password.')
    end

    it 'does not login user with invalid username' do
      visit new_user_session_path
      fill_in 'Username', with: 'Mike'
      click_on 'Log in'
      expect(page).to have_content('Invalid Username or password.')
    end
  end
end