class Invitation < ApplicationRecord
  belongs_to :inviter, class_name: 'User', foreign_key: "inviter_id"
  belongs_to :invitee, class_name: 'User', foreign_key: "invitee_id"
  belongs_to :chat_session

  enum status: { pending: 0, accepted: 1, declined: 2 }

  validates :status, presence: true
end
