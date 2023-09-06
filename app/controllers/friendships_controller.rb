class FriendshipsController < ApplicationController

  def show; end

  def index
    @friendships = current_user.friendships
  end

  def create
    @friendship = Friendship.new(friendship_params)# (friendship_params)

    @friendship.save
    redirect_to feedback_chat_session_path(params[:chat_session_id]), notice: "Friendship request sent"
  end

  def edit
    @friendship = Friendship.find(params[:id])
  end

  def change_status
    @friendship = Friendship.find(params[:id])
    new_status = params[:status]
    case new_status
    when "accepted"
      @friendship.update(status: "accepted")
    when "declined"
      @friendship.update(status: "declined")
    when "blocked"
      @friendship.update(status: "blocked")
    else
      flash[:alert] = "This status is not valid, sorry 😢"
    end
    redirect_to chat_sessions_path
  end

  # notification on friendship request
  def requests
    @pending_sent_requests = Friendship.where(user_id: current_user.id, status: "pending")
    @pending_received_requests = Friendship.where(friend_id: current_user.id, status: "pending")
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id, :status)
  end
end
