class UsersController < ApplicationController
    def new 
        @user = User.new
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            session[:user_id] = user.id
            redirect_to users_path
        else
            @user = user
            render 'users/new'        
        end
    end

    def index
        @users = User.all
    end

    private 
    def user_params 
        params.require(:user).permit(:name, :username, :password, :email)
    end
end