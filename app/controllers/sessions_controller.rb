class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(password: params[:user][:password])
            session[:user_id] = user.id
            redirect_to doctors_path
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



