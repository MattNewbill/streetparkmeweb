class CreateParkingSpots < ActiveRecord::Migration
  def change
    create_table :parking_spots do |t|
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
