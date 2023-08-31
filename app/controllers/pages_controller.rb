class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def show_profile
    @profile = User.find(params[:id])
  end

# def new
#   @profile = current_user.build_profile
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
