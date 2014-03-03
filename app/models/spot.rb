class Spot < ActiveRecord::Base attr_accessible :address, :description, :latitude, :location_type, :longitude, :title
  #validates :address, presence: true
  #validates :location_type, presence: true
  geocoded_by :address
  after_validation :geocode#, if => :address_changed
end
