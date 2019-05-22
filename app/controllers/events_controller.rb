class EventsController < ApplicationController
    def new
        @event = Event.new
    end

    def create
        event = Event.new(event_params)
        event.save()
        redirect_to root_path
    end 

    def index
        if logged_in?
            @user = User.find(session[:user_id])
        end
        @event = Event.new
        @events = Event.all
    end

    def show
        @event = Event.find(params[:id])
        respond_to do |format|
            format.html { render :show}
            format.json {render json: @event}
        end
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
    end
    private 

    def event_params
        params.require(:event).permit(:name, :location, :description)
    end
end