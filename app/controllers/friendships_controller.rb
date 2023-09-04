class FriendshipsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_user
  def show
    @friendship_request = Friendship_request.new
    # @friendship_request = Friendship_request.find(params[:id])
      if friendship_request.exists?(@user)
      else
    end
  end
end

  # if current user likes the user after a chat seesion
  # he sents friendship request
  # path - chat_seesions?
  # if the user accepts the request
  # they can see each profiles
  # path - profile?
  # else do not show profile (full profile, only limited as before)
  # path - ?
  # && do not list the "don't-like-user" in the friendships or random calls
  # path - ?

  # def create_like
  #   current_user.send_follow_request_to(@user)
  #   redirect_to profile_path(@user)
  # end

  # def destroy_dislike
  #   make_it_unfriend_request
  #   current_user.unfollow(@user)
  #   redirect_to profile_path(@user)
  # end

  # def accept
  #   current_user.accept_follow_request_of(@user)
  #   redirect_to root_path
  # end

  # def decline
  #   current_user.decline_follow_request_of(@user)
  #   redirect_to root_path
  # end

  # def block
  #   current_user.remove_follow_request_for(@user)
  #   redirect_to root_path
  # end

  # private

  # def set_user
  #   @user = User.find(params[:id])
  # end

  # def make_if_friend_request
  #   current_user.send_follow_request_to(@user)
  #   @user.accept_follow_request_of(current_user)
  # end

  # def make_it_unfriend_request
  #   @user.unfollow(current_user) if @user.mutual_following_with?(current_user)
  # end
end
