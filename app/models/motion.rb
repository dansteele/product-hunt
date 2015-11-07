class Motion < ActiveRecord::Base

  belongs_to :motion_list
  has_many :votes
  has_many :constituents, through: :votes

end
