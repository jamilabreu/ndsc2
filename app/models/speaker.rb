class Speaker < ActiveRecord::Base
  attr_accessible :bio, :image, :keynote, :name, :references, :year
  belongs_to :event
end
