class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  enum status: { pending: "pending", accepted: "accepted", declined: "declined", blocked: "blocked" }
end
