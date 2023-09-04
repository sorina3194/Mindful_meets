class FriendshipsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_user

  def show; end

  def index
    @friendships = current_user.friendships
  end

end
