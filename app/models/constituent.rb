class Constituent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :votes
  has_many :motions, through: :votes
  belongs_to :constituency


  def current_motion_list
    constituency.government.motion_list.last
  end

end
