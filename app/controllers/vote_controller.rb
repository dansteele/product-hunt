class VoteController < ApplicationController

  # skip_before_filter  :verify_authenticity_token
  def create
    motion_id = (params[:data][:motion_id]).to_i
    points = params[:data][:points].to_i
    unless Motion.exists?(motion_id)
      render nothing: true, status: :bad_request and return
    end
    current_constituent.vote_on(motion_id, points)
    render nothing: true
  end

end
