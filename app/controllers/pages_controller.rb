class PagesController < ApplicationController
  def thirteen
    @keynote = Speaker.where(year: "2013", keynote: true).first
    @speakers = Speaker.where(year: "2013", keynote: false)
    @workshops = Event.where(year: "2013", workshop: true).order("start_time, name")
  end
  def twelve
    @keynote = Speaker.where(year: "2012", keynote: true).first
    @speakers = Speaker.where(year: "2012", keynote: false)
    @workshops = Event.where(year: "2012", workshop: true)
  end  
  def about
  end
  def host
  end  
end
