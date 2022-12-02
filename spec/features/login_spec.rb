require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  background { visit new_user_session_path }

  scenario 'has a sign in form' do
    expect(page).to have_field('Email')
    expect(page).to have_field('Password')
    expect(page).to have_button('Log in')
  end

  scenario 'signs in a user with wrong email' do
    @user = User.create!(email: 'test@gmail.com', name: 'Test', password: 'password')
    fill_in 'Email', with: 'wrong@example.com'
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  scenario 'signs in a user with wrong password' do
    @user = User.create!(email: 'test@gmail.com', name: 'Test', password: 'password')
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: 'wrongpassword'
    click_button 'Log in'
    expect(page).to have_content('Invalid Email or password.')
  end

  scenario 'signs in a user with correct credentials' do
    @user = User.create!(email: 'test@gmail.com', name: 'Test', password: 'password')
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
  end
end
