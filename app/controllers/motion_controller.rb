class MotionController < ApplicationController

  before_filter :check_signed_in

  def index
    # Finds out which motion it should redirect the user to
    redirect_to motion_path(current_constituent.constituency.government.motion_lists.last.motions.first) # Temporary
  end

  def show
    @motion = Motion.find(params[:id])
  end

  def check_signed_in
    unless constituent_signed_in?
      redirect_to new_constituent_registration_path
    end
  end

  def check_signed_in
    unless constituent_signed_in?
      redirect_to new_constituent_registration_path
    end
  end

end
