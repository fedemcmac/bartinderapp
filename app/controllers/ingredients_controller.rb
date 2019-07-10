class IngredientsController < ApplicationController
    before_action :authorize_user
    def show
        @ingredient = Ingredient.find(params[:id])
    end
    
end
