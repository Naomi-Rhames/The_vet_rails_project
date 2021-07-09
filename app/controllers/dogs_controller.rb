class DogsController < ApplicationController
    before_action :find_dog, only: [:show]
    def new
        @dog = Dog.new
        # binding.pry
    end

    def create
        @dog = Dog.create(dog_params)
        if @dog.save
            redirect_to dogs_path
           
        else
            render :new
    
        end
    end

    def index
        @dogs = Dog.all
    end

    def show
    end

    def edit
    end
    
    def destroy
        @dog.destroy
        redirect_to dogs_path
    end
    private

    def find_dog
        @dog = Dog.find_by_id(params[:id]) 
    end 

    def dog_params
       params.require(:dog).permit(:name, :life_span, :temperament, :description, :symptoms ,:origin, :phone_number, :owners_name, :dog_breed, :image) 
    end
end
