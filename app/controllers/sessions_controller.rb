class SessionsController < ApplicationController

    def new
    end

    def create
         
        user = User.find_by(email: params[:session][:email])
   
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to cocktails_path
        else
            flash[:errors] = ["Sorry, that account is not found"]
            redirect_to login_path
        end
    end
    

    def destroy
        session.delete(:user_id)
        redirect_to welcome_path
    end
end



