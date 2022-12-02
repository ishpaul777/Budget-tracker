require 'rails_helper'

RSpec.describe Group, type: :model do
  user = User.create(name: 'test', email: 'test@example.com', password: '123456')
  subject { described_class.new(name: 'test', user_id: user) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a name longer than 30 characters' do
    subject.name = 'a' * 31
    expect(subject).to_not be_valid
  end
end
