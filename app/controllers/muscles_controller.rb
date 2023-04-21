class MusclesController < ApplicationController
  def index
    muscles = Muscle.all
    render json: muscles
  end
end
