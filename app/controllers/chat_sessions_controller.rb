require 'httparty'
class ChatSessionsController < ApplicationController
  before_action :set_chat_session, only: [:show]

  def create
    @chat_session = ChatSession.create
    # Select 3 random users for invitations (example query)
    random_users = User.order("RANDOM()").limit(3)
    random_users.map do |user|
      invitation = Invitation.new(chat_sessions_id: @chat_session.id, inviter: current_user, invitee: user, status: 'pending')
      invitation.save
    end
    redirect_to chat_session_path(@chat_session.id)
  end

  def index
    raise

    @chat_sessions = ChatSession.all
  end

  def show
    @chat_session = ChatSession.find(params[:id])
    @invitations_ids = @chat_session.invitations.pluck(:invitee_id)
    @invited_users = User.where(id: @invitations_ids)

    # Check invitation statuses and generate Google Meets link if needed
  #   @invitations.each do |invitation|
  #     if invitation.status == 'accepted'
  #       generate_mindful_meets_link(invitation)
  #     end
  #   end
  end

  # def generate_mindful_meets_link
  #   response = HTTParty.post(
  #     'https://api.zoom.us/v2/users/me/meetings',
  #     headers: {
  #       'Content-Type' => 'application/json',
  #       'Authorization' => "Bearer #{your_zoom_api_token}"
  #     },
  #     body: {
  #       topic: 'Video Chat Meeting',
  #       type: 1, # Instant Meeting
  #       settings: {
  #         use_pmi: false,
  #         approval_type: 0,
  #         registration_type: 1
  #       }
  #     }.to_json
  #   )

  #   if response.code == 201
  #     meeting_data = JSON.parse(response.body)
  #     zoom_meeting_link = meeting_data['join_url']

  #     # Store the Zoom meeting link in the invitation or elsewhere
  #     invitation.update(zoom_meeting_link: zoom_meeting_link)
  #   else
  #     # Handle error cases here
  #     puts "Error creating Zoom meeting: #{response.body}"
  #   end
  # end


  private

  def set_chat_session
    @chat_session = ChatSession.find(params[:id])
  end

  def chat_session_params
    params.require(:chat_session).permit(:status, :video_chat_link)
  end
end
