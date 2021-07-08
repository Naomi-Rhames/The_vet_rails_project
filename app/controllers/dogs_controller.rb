class DogsController < ApplicationController

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.new(dog_params)
        if @dog.save
            redirect_to dog_path
        else
            render :new
        end
    end

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find_by_id(params[:user_id])
    end

    def destroy
        @dog.destroy
        redirect_to dogs_path
    end
    private

    def dog_params
       params.require(:dog).permit(:name, :life_span, :temperament, :description, :orgin, :phone_number, :owners_name, :dog_breed, :image) 
    end
end
