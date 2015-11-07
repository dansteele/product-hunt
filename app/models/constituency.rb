class Constituency < ActiveRecord::Base

  has_many :governments
  has_many :constituents

end
