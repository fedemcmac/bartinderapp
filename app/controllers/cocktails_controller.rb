class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new

  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    if @cocktail.valid?
      redirect_to @cocktail
    else
    render :new
    end
  end

  def destroy
      @cocktail = Cocktail.find params[:id]
      @cocktail.destroy
      flash[:notice] = "Cocktail #{@cocktail.name} succcessfully deleted"
      redirect_to cocktails_path
  end


private

    def cocktail_params
      params.require(:cocktail).permit(:name, :recipe, :user_id)
    end
end
