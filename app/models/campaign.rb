class Campaign < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  validates :description, presence: true

  belongs_to :user
  has_many :pledges
end
