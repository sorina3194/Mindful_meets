class ChatSessionController < ApplicationController
  before_action :set_chat_session, only: [:show]

  def create

  end

  def index
    @chat_sessions = ChatSession.all
  end

  def show
    @pending_invitation_users = @chat_session.pending_invitation_users
  end

  private

  def set_chat_session
    @chat_session = ChatSession.find(params[:id])
  end

  def chat_session_params
    params.require(:chat_session).permit(:status, :video_chat_link)
  end
end
