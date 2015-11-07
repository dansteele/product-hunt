class Vote < ActiveRecord::Base

  belongs_to :constituent
  belongs_to :government

end
