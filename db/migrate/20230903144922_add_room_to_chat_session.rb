class AddRoomToChatSession < ActiveRecord::Migration[7.0]
  def change
    add_reference :chat_sessions, :room, index: true
    add_foreign_key :chat_sessions, :rooms
  end
end
