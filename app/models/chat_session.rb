class ChatSession < ApplicationRecord
  has_many :invitations, dependent: :destroy

  enum status: { pending: "pending", active: "active", completed: "conpleted" }

  # validates :status, presence: true, inclusion: { in: %w[pending active completed] }
  # validates :video_chat_link, presence: true

  # Add counter cache to track invitations count
  # counter_cache :invitations_count
end
