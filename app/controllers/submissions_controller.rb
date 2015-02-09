class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :update]

  def index

  end

  def new
    @submission = Submission.new
    @assignment = Assignment.find(session[:assignment_id])
  end

  def create
    submission = Submission.new(submission_params)
    if submission.save
      session[:assignment_id] = nil # TODO there has to be a better way
      redirect_to assignments_path
    else
      render 'new'
    end
  end

  private def set_submission
    @submission = Submission.find(params[:id])
  end

  private def submission_params
    params.require(:submission).permit(:repository, :application ,:student_id, :assignment_id, :submitted_at)
  end
end
