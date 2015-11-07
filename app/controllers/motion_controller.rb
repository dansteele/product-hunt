class MotionController < ApplicationController

  def show
    @motion = Motion.find(params[:id])
  end

end