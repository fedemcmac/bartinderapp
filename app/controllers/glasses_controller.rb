class GlassesController < ApplicationController

  def index
    @glasses = Glass.all

  end

  def show
    @glass = Glass.find(params[:id])

  end

end
