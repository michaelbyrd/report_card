class AssignmentsController < ApplicationController
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

  private def assignment_params

  end

end
