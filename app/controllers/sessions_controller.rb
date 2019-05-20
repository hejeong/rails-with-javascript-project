class SessionsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        user_info = params[:user]
        user = User.find_by(username: user_info[:username])
        if  !user || !user_info[:password]
            return redirect_to login_path
        else
            user = user.try(:authenticate, user_info[:password])
            if !user
                return redirect_to login_path
            end
        end
        redirect_to root_path
    end

    def destroy
        # log out
        session.delete :user_id
        redirect_to root_path
    end
end