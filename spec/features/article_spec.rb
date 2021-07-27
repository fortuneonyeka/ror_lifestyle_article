require 'rails_helper'

RSpec.feature 'Articles', type: :system do
  describe 'add a new article' do
    before :each do
      Category.create(name: 'Tech', priority: 1)
      User.create(username: 'Fortune')
    end
    it 'creates a user' do
      visit new_user_registration_path
      fill_in 'Username', with: 'user10'
      click_on 'Sign up'

      expect(page).to have_content('Welcome! You have signed up successfully.')
    end

    it 'logs in and creates an article' do
      visit new_user_registration_path
      fill_in 'Username', with: 'user10'
      click_on 'Sign up'
      click_link 'New Article'
      fill_in 'Title', with: 'Info Tech'
      fill_in 'Body', with: 'Internet of things'
      click_button 'Create Article'

      expect(page).to have_content('Internet of things')
    end
  end
end
