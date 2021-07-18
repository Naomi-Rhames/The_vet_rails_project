class BreedsController < ApplicationController
    before_action :find_breed, only: [:show]


    def index
        @breeds = Breed.all
    end



    def show 
    end

 private

        def find_breed
            @breed = Breed.find_by_id(params[:id])
        end

        def breed_params
            params.require(:breed).permit(:name, :breed_for, :life_span, :temperament, :description, :origin, :image) 
         end
end