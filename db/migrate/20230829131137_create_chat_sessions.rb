class CreateChatSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :chat_sessions do |t|
      t.integer :invitations_count, default: 0
      t.string :video_chat_link
      t.string :status, default: 'pending'

      t.timestamps
    end
  end
end
