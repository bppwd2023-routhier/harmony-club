class Web::EventsController < ApplicationController
  def calendar
    @events=Event.all 
    @featured = Event.where("featured==true")
    puts @events
  end

  def show
  end
end
