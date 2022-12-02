require 'rails_helper'

RSpec.feature 'ExpenseIndices', type: :feature do
  before(:each) do
    user = User.create!(email: 'test@exmple.com', name: 'Test', password: 'password')
    @group = Group.create!(name: 'Test Group', user_id: user.id)
    visit new_user_session_path
    @expense1 = Expense.create!(name: 'Test Expense', amount: 100, groups: [@group], user_id: user.id)
    @expense2 = Expense.create!(name: 'Test Expense 2', amount: 200, groups: [@group], user_id: user.id)
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'

    visit group_expenses_path(@group)
  end

  scenario 'has a list of expenses' do
    expect(page).to have_content('EXPENSES')
    expect(page).to have_content(@expense1.name)
    expect(page).to have_content(@expense2.name)
    expect(page).to have_content(@expense1.amount)
    expect(page).to have_content(@expense2.amount)
  end

  scenario 'has a link to create a new expense' do
    expect(page).to have_link('NEW EXPENSE')
  end
end
