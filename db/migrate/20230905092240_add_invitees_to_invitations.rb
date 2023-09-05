class AddInviteesToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :invitee2, :integer
    add_column :invitations, :invitee3, :integer
  end
end
