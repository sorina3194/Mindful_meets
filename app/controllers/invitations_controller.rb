class InvitationsController < ApplicationController
  before_action :set_invitation

  def create

  end

  def show

  end

  def accept

  end

  def decline

  end

  private

  def set_invitation
    @invitation = Invitation.find(params[:id])
  end
end

