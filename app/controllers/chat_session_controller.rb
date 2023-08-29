class ChatSessionController < ApplicationController
  before_action :set_chat_session, only: [:show]

  def create
    raise
    @chat_session = ChatSession.create
    # Select 3 random users for invitations (example query)
    random_users = User.order("RANDOM()").limit(3)
    random_users.each do |user|
      Invitation.create(chat_session: @chat_session, invited: current_user, invitee: user, status: 'pending')
    end
    redirect_to chat_session_path
  end

  def index
    @chat_sessions = ChatSession.all
  end

  def show
    # @pending_invitation_users = @chat_session.pending_invitation_users
  end

  private

  def set_chat_session
    @chat_session = ChatSession.find(params[:id])
  end

  def chat_session_params
    params.require(:chat_session).permit(:status, :video_chat_link)
  end
end
