class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new

  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:event_name, :start_time, :end_time, :cover, :place_id)
  end
end
