class PlantsController < ApplicationController
  def index
    render json: Plant.all, status: :ok
  end

  def show
    plants = Plant.find_by(id: params[:id])
    render json: plants
  end

  def create
    plants = Plant.create(plant_params)
    render json: plants, status: :created
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
