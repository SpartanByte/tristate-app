require 'spec_helper'
require 'rails_helper'

RSpec.feature "Check Root Path" do
#   let(:user) { create(:user) }

  #devise test sign up - negative test
 
    scenario 'test root content' do
      visit('/')
      expect(page).to have_content("Welcome Home")
      puts "Content found"
      expect(page).not_to have_content('User:')
      puts "User was not logged in, signed in only content not shown"
    end

    scenario 'test root link' do
        visit('/')
        click_link 'Go To Front End Testing'
       expect(page).to have_content("Welcome To Front End Testing")
        puts "click content found"
      end
end
