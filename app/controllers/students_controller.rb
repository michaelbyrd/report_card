class StudentsController < ApplicationController
  def index
    @teachers = Teacher.all
  end
end
