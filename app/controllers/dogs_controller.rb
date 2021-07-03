class DogsController < ApplicationController

    def index
        @pet = Dog.all
    end

    def show
        @pet = Dog.find(params[:id])
    end
end
