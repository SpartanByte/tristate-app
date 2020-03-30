require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Pages' do
  context 'test run' do
    scenario 'should be successful' do
      visit('/')
      expect(page).to have_content("Testing")
      puts "Success: Content 'Testing' was found' "
    end
  end
  context 'test run two' do
    scenario 'should be successful' do
      visit('/')
      expect(page).to have_content("Welcome Home")
      puts "Success: Content 'Welcome Home' was found' "
    end
  end
end