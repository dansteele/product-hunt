class Motion < ActiveRecord::Base

  has_many :votes
  has_many :constituents, through: :votes

end
