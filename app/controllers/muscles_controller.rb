class MusclesController < ApplicationController
  def index
    muscles = Muscle.all
    render json: muscles
  end

  def show
    muscle = Muscle.find(params[:id])
    render json: muscle
  end

  def create
    muscle = Muscle.new(muscle_params)
    if muscle.save
      render json: muscle
    else
      render json: { error: "Unable to create muscle" }, status: 400
    end
  end

  def update
    muscle = Muscle.find(params[:id])
    if muscle.update
      render json: muscle
    else
      render json: { error: "Unable to modify muscle" }, status: 400
    end
  end

  def destroy
    muscle = Muscle.find(params[:id])
    if muscle
      muscle.destroy
      render json: muscle, status: 200
    else
      render json: { error: "Unable to destroy muscle" }, status: 400
    end
  end

  private

  def muscle_params
    params.permit(:name)
  end
end
