class UsersController < ApplicationController
    def index
        @users = Users.all
    end

    def new
        @user = Users.new
    end

    def create
    end

end
