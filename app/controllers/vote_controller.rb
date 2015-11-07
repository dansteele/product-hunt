class VoteController < ApplicationController

  skip_before_filter  :verify_authenticity_token
  def create
    # cheating current_constituent
    current_constituent = Constituent.first
    # check is the constituent is valid
    motion_id = (params[:motion]).to_i
    points = params[:points].to_i
    # check if motion exist and points are valid
    # return head(:bad_reqest) unless Motion.exists?(motion_id) || points.between?(0, 10)
    unless Motion.exists?(motion_id)
      render nothing: true, status: :bad_request and return
    end
    motion = Motion.find(params[:motion])

    current_constituent.vote_on(motion_id, points)
    render nothing: true
  end

end
