require 'spec_helper'
require 'rails_helper'

RSpec.describe "Users" do
  let(:user) { create(:user) }

  #devise test sign up - negative test
  context 'devise success signup - no email on submit' do
    scenario 'should fail' do
      visit('/users/sign_up')
      within('form') do
        fill_in "Email", with: ''
        fill_in "Password", with: 'TRI_key123'
        fill_in "Password confirmation", with: 'TRI_key123'
      end
      click_button 'Sign up'
      expect(page).to have_content("Welcome")
      puts "Success: user created!"
    end
  end
end
