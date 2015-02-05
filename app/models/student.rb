class Student < ActiveRecord::Base
  has_one :user
  belongs_to :teacher
end
