class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end
  
  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      flash[:success] = 'Feedback created successfully'
      redirect_to root_path # You can redirect to any desired path
    else
      render 'new'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :target_user_id)
  end
end
