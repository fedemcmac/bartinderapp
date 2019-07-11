class TypesController < ApplicationController
    before_action :authorize_user
    def index
        @types = Type.all
    end
    
end
