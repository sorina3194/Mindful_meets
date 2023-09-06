class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    @feedback.save
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :target_user_id)
  end
end
