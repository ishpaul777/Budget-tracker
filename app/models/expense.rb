class Expense < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  # must belong to atleast one group
  validates :groups, presence: true
end
