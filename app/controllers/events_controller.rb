class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  def show

  end
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_url
    else
      render action: "new"
    end
  end
  private
    def event_params
      params.require(:event).permit(:name, :description, :location)
    end
end
