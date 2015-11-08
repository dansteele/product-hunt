class Constituent < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  after_create do |con|
    con.constituency = Constituency.first
    con.save
  end

  has_many :votes
  has_many :motions, through: :votes
  belongs_to :constituency


  def current_motion_list
    constituency.government.motion_list.last
  end

  def vote_on (motion_id, vote_points)
    # check if the constituent has voted for the same motion already
    # if so, update that vote
    vote = votes.find_by(motion_id: motion_id)
    if vote.nil?
      votes << Vote.create(motion_id: motion_id, points: vote_points)
    else
      vote.points = vote_points
      vote.save()
    end
    self.points -= vote_points
    save
  end

end
