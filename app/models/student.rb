class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :teacher

  def name
    user.name
  end
end
