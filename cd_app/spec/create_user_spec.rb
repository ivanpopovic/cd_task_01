require 'rails_helper.rb'

feature 'Create User' do
  scenario 'create User' do
    visit '/users'
    click_link 'New User'
    fill_in 'Name', :with => 'Lorem'
    click_button 'Create User'
    expect(page).to have_content('Name: Lorem')
  end
end
