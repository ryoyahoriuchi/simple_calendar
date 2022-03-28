class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_param)
    redirect_to root_path
  end

  private

  def event_param
    params.require(:event).permit(:title, :content, :start_time)
  end
end
