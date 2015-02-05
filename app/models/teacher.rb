class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :students
  has_many :assignments

  def name
    user.name
  end
end
