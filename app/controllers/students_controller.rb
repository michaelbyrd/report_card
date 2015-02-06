class StudentsController < ApplicationController
  before_action :check_user
  def index
    @teachers = Teacher.all
  end
end
