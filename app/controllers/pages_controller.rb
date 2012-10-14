class PagesController < ApplicationController
  def thirteen
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
