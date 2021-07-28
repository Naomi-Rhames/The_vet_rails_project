class BreedsController < ApplicationController
    before_action :find_breed, only: [:show]


    def index
        @breeds = Breed.all
        if params[:q].present? 
            @breeds = @breeds.search(params[:q].downcase) 
        end
    end
    
    

    def show 
    end

 private

        def find_breed
            @breed = Breed.find_by_id(params[:id])
        end

        def breed_params
            params.require(:breed).permit(:name, :breed_for, :life_span, :temperament, :description, :origin, :image, :search) 
         end
end