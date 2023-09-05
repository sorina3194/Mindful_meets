class Invitation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: "user_id"
  belongs_to :invitee, class_name: 'User', foreign_key: "invitee_id"
  belongs_to :chat_session

  enum status: { pending: "pending", accepted: "accepted", declined: "declined" }

  validates :status, presence: true
end
