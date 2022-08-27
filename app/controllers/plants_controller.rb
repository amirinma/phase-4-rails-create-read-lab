class PlantsController < ApplicationController
    def index
        plant = Plant.all 
        render json: plant
    end
    def show 
        plant = Plant.find_by(id: params[:id])
        render json: plant
    end
    def create
        plant = Plant.create(create_plant)
        render json: plant, status: :created
    end
    def create_plant
        params.permit(:name, :image, :price)
    end
end
