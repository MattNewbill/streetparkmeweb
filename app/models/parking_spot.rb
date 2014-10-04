class ParkingSpot < ActiveRecord::Base
  has_many :ParkingRestriction, :foreign_key => "parking_spots_id"
end
