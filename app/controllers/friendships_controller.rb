class FriendshipsController < ApplicationController

  def show; end

  def index
    @friendships = current_user.friendships
  end

  # on the like method
  # need method that sent the request friendship,
  # then the request will be accepted and
  # changed to friendship status
  # on thumbs up, when clicked, create Friendship request to the user/friend.
  # show the request on the friends profile.
  # when accepted, create friendship, display user in friends list,
  # and send notification back to the other user about the accepted request
  # and display user in their friends list
  # we need to create a friendships request model,
  # with a create method triggered on the thumb up.
  # i need to retrieve the invitee id from the invitation,
  # friendship_request.create(user_id: current_user, friends_id: invitee_id)
  # the thumbs up button is in chat sessions index html
  def create
    @friendships = Friendship.new # (friendship_params)
    @friendships.user = current_user
    @friendships.save
      # flash[:success] = 'Friendship created 🧜🏻‍♂️💃👯‍♂️🦥'
      # redirect_to friendships_path
    # else
      # render 'friendships'
    # end
  end

  # notification on friendship request
  def requests
    @pending_sent_requests = Friendship.where(user_id: current_user.id, status: "pending", accepted?: false)
    @pending_received_requests = Friendship.where(friend_id: current_user.id, status: "pending", accepted?: false)
  end

  private

  # def friendship_params
    # params.require(:friendship).permit(:user, :friend_id)
  # end
end
