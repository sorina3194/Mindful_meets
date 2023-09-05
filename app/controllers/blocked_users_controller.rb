class BlockedUsersController < ApplicationController
  def create
    @invitation = Invitation.find(params[:invitation_id])
    @blocked_user = BlockedUser.new(user_id: current_user.id, blocked_user_id: @invitation.invitee.id)
    if @blocked_user.save
      puts 'User has been blocked'
      redirect_to chat_sessions_path, notice: "User has been succesfully blocked" # You can redirect to any desired path
    else
      render 'chat_sessions/index'
    end
  end
end
