class UsersController < ApplicationController
    
    before_action :authorize_user, except: [:new, :create]
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def show
        @user = User.find(params[:id])
        
    end

    def edit
            @user = User.find(params[:id])
            if @user.id == session[:user_id]
                
            else
                redirect_to user_path
            end           
    end

    def update
        @user = User.find(params[:id])
    
        @user.update(user_params)
        if @user.valid?
            redirect_to user_path
        else
            flash[:errors] = @user.errors.full_messages
            render :edit
        end
    end

    def destroy
        @user = User.find(params[:id])
        session.delete(:user_id)
        # @user.comments.each{|comment| comment.delete}
        # @user.likes.each{|like| like.delete}
        # @user.cocktails.each do |cocktail| 
        #     cocktail.comments.each{|comment| comment.delete}
        #     cocktail.likes.each{|like| like.delete}
        #     cocktail.delete
        # end
        @user.destroy
        redirect_to welcome_path
    end





    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
