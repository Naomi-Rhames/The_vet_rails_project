class DogsController < ApplicationController
    before_action :find_dog, only: [:show, :edit, :update, :destroy]
    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        @dog.user_id = current_user.id
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

    def update
        if  @dog.user == current_user && @dog.update(dog_params)
            redirect_to dog_path
        else
            render :edit
        end
    end
    
    def destroy
        if @dog.user == current_user 
            @dog.destroy
            flash[:notice] = "#{@dog.name} was sadly deleted 😢"
            redirect_to dogs_path(@dog)
       end
    end
   
     
    private

    def find_dog
        @dog = Dog.find_by_id(params[:id])
    end 

    def dog_params
       params.require(:dog).permit(:name, :user_id, :age, :temperament, :description, :symptoms ,:origin, :phone_number, :owners_name, :dog_breed) 
    end

end
