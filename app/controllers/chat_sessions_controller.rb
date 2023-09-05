require 'httparty'
class ChatSessionsController < ApplicationController
  before_action :set_chat_session, only: [:show]

  def create
    @chat_session = ChatSession.create(status: "active")
    blocked_friendships = Friendship.where(user_id: current_user.id, status: ["blocked", "declined"])
    blocked_friendships += Friendship.where(friend_id: current_user.id, status: ["blocked", "declined"])

    blocked_user_ids = blocked_friendships.flat_map do |friendship|
      friendship.friend_id == current_user.id ? friendship.user_id : friendship.friend_id
    end.uniq

    blocked_user_ids.push(current_user.id)

    random_users = User.where.not(id: blocked_user_ids).order("RANDOM()").limit(3)

    random_users.map do |user| # TODO dont send invitations to for users that are blocked or declined
      invitation = Invitation.new(chat_session_id: @chat_session.id, user: current_user, invitee: user, status: 'pending', name: 'Mindful Meet')
      invitation.save
      InvitationNotification.create(user_id: user.id)
    end
    
    myinvite = Invitation.new(chat_session_id: @chat_session.id, user: current_user, invitee: current_user, status: 'pending', name: 'Mindful Meet')
    myinvite.save!
    @room = Room.create
    @chat_session.room_id = @room.id
    @chat_session.save
    redirect_to chat_session_path(@chat_session.id)
  end

  def index
    @friendship = Friendship.new
    @chat_sessions = ChatSession.all
    @invitations = Invitation.where(user: current_user)
    @feedback = Feedback.new
    # @friendship_request = FriendshipRequest.new
  end

  def show
    @chat_session = ChatSession.find(params[:id])
    @invitations_ids = @chat_session.invitations.pluck(:invitee_id)
    @invited_users = User.where(id: @invitations_ids)
  end

  def finish
    @chat_session = ChatSession.find(params[:id])
    @chat_session.update(status: "ended")
    redirect_to root_path
  end

  private

  def set_chat_session
    @chat_session = ChatSession.find(params[:id])
  end

  def chat_session_params
    params.require(:chat_session).permit(:status, :video_chat_link)
  end
end
