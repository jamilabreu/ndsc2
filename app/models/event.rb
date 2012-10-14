class Event < ActiveRecord::Base
  attr_accessible :description, :end_time, :name, :session, :start_time, :workshop, :venue, :year
  has_many :speakers

  def agenda_time
    "#{start_time.strftime('%l:%M')} - #{end_time.strftime('%l:%M%P')}"
  end
end
