require 'rails_helper'

RSpec.describe Expense, type: :model do
  user = User.create(name: 'test', email: 'test@example.com', password: '123456')
  group = Group.new(name: 'test', user_id: user.id)
  subject { described_class.new(name: 'test', amount: 100, user_id: user) }

  it 'is valid with valid attributes' do
    subject.groups << group
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an amount' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with an amount less than 1' do
    subject.amount = 0
    expect(subject).to_not be_valid
  end

  it 'is not valid with amount not a number' do
    subject.amount = 'a'
    expect(subject).to_not be_valid
  end
end
