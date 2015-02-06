class AssignmentsController < ApplicationController

  respond_to :html, :json

  before_action :check_user
  before_action :set_assignment, only: [:edit, :update, :show]

  def index
    @assignments = Assignment.all
    # TODO write a method in assignment model to get assignments
    # TODO figure out a better way to parse the assignment description,
    # something like /300characters and then a newline/
  end

  def show
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to assignments_path
    else
      render 'new'
    end
  end

  def edit
    redirect_to @assignment if student?
  end

  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to assignments_path }
        format.json { respond_with @assignment }
      else
        render 'edit'
      end
    end
  end

  private def assignment_params
    params.require(:assignment).permit(:name, :description, :due_at, :visable, :teacher_id)
  end

  private def set_assignment
    @assignment = Assignment.find(params[:id])
  end

end
