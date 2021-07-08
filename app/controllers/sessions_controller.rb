class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

 def new
 end

 def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to dogs_path
    else
        flash[:errors] = ["Invaild Email or Password!"]
        redirect_to login_path
     end
 end

    def destroy
        session.clear
        redirect_to login_path
    end

end
