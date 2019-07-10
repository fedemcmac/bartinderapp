class LikesController < ApplicationController
    def new
        @like = Like.new
    end

    def create
        @like = Like.new(like_params)
        @cocktail = Cocktail.find(@like.cocktail_id)
        if @like.valid?
            @like.save
            redirect_to @cocktail
        else
            redirect_to @cocktail
        end
    end

    

    def destroy
        @like = Like.find(params[:id])
        @cocktail = Cocktail.find(@like.cocktail_id)
        @like.delete
        redirect_to @cocktail
    end

    private
    def like_params
       params.require(:like).permit(:user_id, :cocktail_id)
    end 
end

