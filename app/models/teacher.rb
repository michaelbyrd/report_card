class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :students

  def name
    user.name
  end
end
