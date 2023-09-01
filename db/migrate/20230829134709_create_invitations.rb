class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.string :video_chat_link
      t.string :name
      t.integer :status
      t.references :inviter, null: false, foreign_key: { to_table: :users }
      t.references :invitee, null: false, foreign_key: { to_table: :users }
      t.references :chat_session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
