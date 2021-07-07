class DogsController < ApplicationController

    def new
        @dogs = Dog.new
    end

    def create
        @dogs = Dog.new(dog_params)
    end
    
    def index
        @dogs = Dog.all
    end

    def show
        @dogs = Dog.find(params[:id])
    end

    private

    def dog_params
       params.require(:dog).permit(:name, :life_span, :temperament, :description, :orgin, :phone_number, :owners_name, :dog_breed, :image) 
    end
end
