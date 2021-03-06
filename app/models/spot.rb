class Spot < ActiveRecord::Base
  attr_accessible :address, :description, :latitude, :location_type, :longitude, :title
  geocoded_by :address
  after_validation :geocode#, if => :address_changed?
end
