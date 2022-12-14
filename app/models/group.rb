class Group < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :icon

  has_and_belongs_to_many :expenses

  validates :name, presence: true, length: { maximum: 30 }
end
