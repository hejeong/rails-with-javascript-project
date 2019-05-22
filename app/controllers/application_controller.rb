class ApplicationController < ActionController::Base
    helper_method :logged_in?
    def logged_in?
        !!session[:user_id]
    end

    def no_response
        
    end
end
