class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:edit, :update]
  def index
    @assignments = Assignment.all # TODO write a method in assignment model to get assignments
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

  end

  def update
    if @assignment.update(assignment_params)
      redirect_to assignments_path
    else
      render 'edit'
    end
  end

  private def assignment_params
    params.require(:assignment).permit(:name, :description, :due_at, :visable, :teacher_id)
  end

  private def set_assignment
    @assignment = Assignment.find(params[:id])
  end

end
