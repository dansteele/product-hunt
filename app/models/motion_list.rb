class MotionList < ActiveRecord::Base

  belongs_to :government
  has_many :motions

end
