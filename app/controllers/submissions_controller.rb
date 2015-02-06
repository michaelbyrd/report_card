class SubmissionsController < ApplicationController
  # before_action :set_submission, only: [:show, :update]

  def index

  end

  def new
    @submission = Submission.new
  end

  def create
    submission = Submission.new(submission_params)
    if submission.save
      redirect_to assignments_path
    else
      render 'new'
    end

  end

  private def set_submission
    @submission = Submission.find(params[:id])
  end

  private def submission_params
    params.require(:submission).permit(:repository, :application)
  end
end
