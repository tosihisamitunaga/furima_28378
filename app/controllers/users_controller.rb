class UsersController < ApplicationController
    def index
        @users = Users.all
    end

    def new
        @users = Users.new
    end

    def create
    end

end
