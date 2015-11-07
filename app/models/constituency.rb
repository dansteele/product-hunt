class Constituency < ActiveRecord::Base

  has_one :government
  has_many :constituents

end
