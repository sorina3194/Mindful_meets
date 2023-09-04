class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      @invitation = Invitation.where(inviter_id: current_user.id).present? ? Invitation.where(inviter_id: current_user.id)[0] : false

      @chat_session = @invitation ? @invitation.chat_session : false

      


      if @invitation && @chat_session.status == "active"
          @display_alert = true
      else
        @display_alert = false
      end

    end
  end

  def show_profile
    @profile = User.find(params[:id])
  end

# def new
#
# end

# def create
#   @profile = Profile.new(profile_params)
# end

# def show
#   @profile = Profile.find(params[:id])
# end

# def update
#   create?
# end

# def destroy

# end

# private

#   def user_profile
#     @uprofile = UserProfile.find(params[:id])
#   end
end
