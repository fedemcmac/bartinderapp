class CommentsController < ApplicationController

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @cocktail = Cocktail.find(@comment.cocktail_id)
        if @comment.valid?
            @comment.save
            redirect_to @cocktail
        else
        redirect_to @cocktail
        end
    end

    

    def destroy
        @comment = Comment.find(params[:id])
        @cocktail = Cocktail.find(@comment.cocktail_id)
        @comment.delete
        redirect_to @cocktail
    end

    private
    def comment_params
       params.require(:comment).permit(:content, :user_id, :cocktail_id)
    end 
end
