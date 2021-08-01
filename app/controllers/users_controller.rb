class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]
   
   
    def new
        @user = User.new
    end 

   def create
        @user = User.new(user_params)
     if @user.save
         session[:user_id] = @user.id 
         redirect_to dogs_path
    else
        render :new
        end
   end

    def index
    #   byebug
      @user = current_user.dogs.all
#          if params[:dog_id]
#             @dogs = Dog.all
#              @users = find_user
#         else
#             @users = User.all
        end
#     end

#    def show

#    end
   private

   def user_params
    params.require(:user).permit(:email, :password)
   end 

end
