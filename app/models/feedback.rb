class Feedback < ApplicationRecord
  belongs_to :user
  has_many :friendship_requests, class_name: 'User', foreign_key: 'friend_id'
  validates :content, presence: true
end
