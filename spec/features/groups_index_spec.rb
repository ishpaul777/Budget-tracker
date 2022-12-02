require 'rails_helper'

RSpec.feature 'GroupsIndices', type: :feature do
  before(:each) do
    user = User.create!(email: 'test@example.com', name: 'Test', password: 'password')
    @group1 = Group.create!(name: 'Test Group', user_id: user.id)
    @group2 = Group.create!(name: 'Test Group 2', user_id: user.id)

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'has a list of groups' do
    expect(page).to have_content('CATEGORIES')
    expect(page).to have_content('NEW CATEGORY')
  end

  scenario 'has a link to create a new group' do
    expect(page).to have_link('NEW CATEGORY')
  end

  scenario 'has list of groups' do
    expect(page).to have_content(@group1.name)
    expect(page).to have_content(@group2.name)
  end

  scenario 'has a link to edit a group' do
    expect(page).to have_link('Edit')
  end

  scenario 'has a button to delete a group' do
    expect(page).to have_button('Delete')
  end
end
