class CreateParkingRestrictions < ActiveRecord::Migration
  def change
    create_table :parking_restrictions do |t|
      t.integer :parking_spot_id
      t.decimal :cost_per_hour
      t.time :beg_time_restriction
      t.time :end_time_restriction
      t.integer :hour_time_restriction_duration
      t.integer :minute_time_restriction_durection
      t.boolean :active_monday
      t.boolean :active_tuesday
      t.boolean :active_wednesday
      t.boolean :active_thursday
      t.boolean :active_friday
      t.boolean :active_saturday
      t.boolean :active_sunday
      t.references :parking_spots, index: true

      t.timestamps
    end
  end
end
