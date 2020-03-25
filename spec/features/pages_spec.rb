require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Pages' do
  context 'test run' do
    scenario 'should be successful' do
      visit('/')
      expect(page).to have_content("Testing")
      puts " Finally' "
    end
  end
end