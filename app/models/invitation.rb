class Invitation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: "user_id"
  belongs_to :invitee, class_name: 'User', foreign_key: "invitee_id"
  belongs_to :chat_session

  enum status: { pending: 0, accepted: 1, declined: 2 }

  validates :status, presence: true
end
