class CreateBlockedUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :blocked_users do |t|
      t.references :user, foreign_key: true, null: false  # User who blocked
      t.references :blocked_user, foreign_key: { to_table: :users }, null: false  # User who is blocked

      t.timestamps
    end
  end
end
