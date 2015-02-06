class Assignment < ActiveRecord::Base
  belongs_to :teacher
  has_many :submissions
end
