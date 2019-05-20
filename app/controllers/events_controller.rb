class EventsController < ApplicationController
    def new
        @event = Event.new
    end


    def index
        @user = nil
        if logged_in?
            @user = User.find(session[:user_id])
        end
        @events = Event.all
    end

end