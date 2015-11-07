class Constituent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :votes
  has_many :motions, through: :votes

  def vote_on (motion_id, points)
    # check if the constituent has voted for the same motion already
    # if so, update that vote
    vote = votes.find_by(motion_id: motion_id)
    if vote.nil?
      votes << Vote.create(motion_id: motion_id, points: points)
    else
      vote.points = points
      vote.save()
    end
  end

end
