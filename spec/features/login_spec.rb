require 'spec_helper'
require 'rails_helper'

RSpec.feature "Logging in a User" do
    #equivalent of 'it' method in rspec
    scenario "Logging in user shows special content" do
        visit "/"
        #Click link to load new article page
        click_link "Sign In"    
  
        page.should have_content("Password")
        page.fill_in 'Email', with: 'admin@example.com'
        page.fill_in 'Password', with: 'some_password'
        click_on 'Log in'

        page.should have_no_content("Wait for the text which is available in the sign in page but not on next page")
        page.should have_content('User:')
        expect(page.current_path).to eq(root_path)
        #assertion


    end
end
