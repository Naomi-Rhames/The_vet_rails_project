class VeterinariansController < ApplicationController
    before_action :find_veterinarian, only: [:show]
    def index
        @veterinarians = Veterinarian.all
    end

    def show
        #    binding.pry
    end

    private
    def find_veterinarian
     
        @veterinarian = Veterinarian.find_by_id(params[:id])
    end
end
