class User < ActiveRecord::Base
  has_secure_password
  has_one :teacher
  has_one :student

  def is_teacher?
    teacher ? true : false
  end

  def is_student?
    student ? true : false
  end
end
