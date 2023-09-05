class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      @blocked_user = BlockedUser.create(user_id: current_user.id, blocked_user_id: @feedback.target_user_id)
      redirect_to chat_sessions_path, notice: "We received your feedback and the user has been succesfully blocked" # You can redirect to any desired path
    else
      render 'chat_sessions/index'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :target_user_id)
  end
end
