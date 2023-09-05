class FriendshipsController < ApplicationController

  def show; end

  def index
    @friendships = current_user.friendships
    @pending_sent_requests = Friendship.where(user_id: current_user.id, status: "pending", accepted?: false)
    @pending_received_requests = Friendship.where(friend_id: current_user.id, status: "pending", accepted?: false)
  end
end
