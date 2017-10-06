class Schedule < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one :community

  validates :titile, presence: true
  validates :content, presence: true
end
