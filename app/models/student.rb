class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :teacher
  has_many :submissions

  def name
    user.name
  end
end
