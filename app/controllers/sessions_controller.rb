class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :google_omniauth]

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

    def google_omniauth 
       user_info = request.env['omniauth.auth']["info"] 
       user = User.find_or_create_from_google(user_info)
       if user
        session[:user_id] = user.id
        redirect_to dogs_path
       else
        flash[:error] = user.errors.full_messages
        redirect_to login_path
       end
    end

    
end
