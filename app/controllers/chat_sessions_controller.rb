require 'httparty'
class ChatSessionsController < ApplicationController
  before_action :set_chat_session, only: [:show]

  def create
    @chat_session = ChatSession.create(status: "active")
    random_users = User.where('id != ?', current_user.id).order("RANDOM()").limit(3)
    random_users.map do |user|
      invitation = Invitation.new(chat_session_id: @chat_session.id, inviter: current_user, invitee: user, status: 'pending', name: 'Mindful Meet')
      invitation.save
    end
    @room = Room.create
    @chat_session.room_id = @room.id
    @chat_session.save
    # else
    #   @chat_session = ChatSession.where("status != ?","ended")
    # end
    redirect_to chat_session_path(@chat_session.id)
  end

  def index
    @chat_sessions = ChatSession.all
    @invitations = Invitation.where(inviter: current_user)
    @feedback = Feedback.new
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
