class UsersController < ApplicationController
    def index
        @items = Item.all
    end

    
    def create
    end

end
