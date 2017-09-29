class Schedule < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :titile, presence: true
  validates :content, presence: true
end
