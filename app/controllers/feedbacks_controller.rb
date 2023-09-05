class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      flash[:success] = 'Feedback created successfully'
      redirect_to root_path # You can redirect to any desired path
    else
      render 'chat_sessions/index'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :target_user_id)

  end
end
