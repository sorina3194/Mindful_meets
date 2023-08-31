class InvitationsController < ApplicationController
  # before_action :set_invitation
  def index
    @my_invitations = Invitation.where(invitee_id: current_user)
  end

  def create

  end

  def show
  end

  def accept
    @invitation = Invitation.find(params[:id])
    @invitation.status = "accepted"
    @invitation.save!
    redirect_to chat_session_path(@invitation.chat_session.id)

    # respond_to do |format|
    #   format.js
    # end
  end

  def decline

  end


  private

  def set_invitation
    @invitation = Invitation.find(params[:id])
  end

end
