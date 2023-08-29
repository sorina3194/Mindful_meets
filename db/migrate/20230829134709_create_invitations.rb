class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.string :video_chat_link
      t.string :status
      t.references :inviter, null: false, foreign_key: true
      t.references :invitee, null: false, foreign_key: true
      t.references :chat_sessions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
