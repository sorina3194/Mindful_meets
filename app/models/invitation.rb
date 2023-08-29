class Invitation < ApplicationRecord
  belongs_to :inviter, class_name: 'User'
  belongs_to :invitee, class_name: 'User'
  belongs_to :chat_session

  enum status: { pending: 0, accepted: 1, declined: 2 }

  validates :status, presence: true
  validates :expiration_time, presence: true
end
