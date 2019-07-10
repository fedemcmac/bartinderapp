class CocktailsController < ApplicationController

  before_action :authorize_user

    def index
      @cocktails = Cocktail.all
    end
  
    def show
      @cocktail = Cocktail.find(params[:id])
      @comment = Comment.new
      @like = Like.new
    end
  
    def new
      @cocktail = Cocktail.new
  
    end
  
    def create
      @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.valid?
        @cocktail.save
        redirect_to @cocktail
      else
      render :new
      end
    end
  
    def destroy
        @cocktail = Cocktail.find params[:id]
        @cocktail.comments.each{|comment| comment.delete}
        @cocktail.likes.each{|like| like.delete}
        @cocktail.delete
        flash[:notice] = "Cocktail #{@cocktail.name} succcessfully deleted"
        redirect_to cocktails_path
    end
  
  
  private
  
      def cocktail_params
        params.require(:cocktail).permit(:name, :recipe, :user_id)
      end
  end