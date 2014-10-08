class CreateParkingRestrictions < ActiveRecord::Migration
  def change
    create_table :parking_restrictions do |t|
      t.integer :parking_spot_id
      t.decimal :cost_per_hour
      t.time :beg_time_restriction
      t.time :end_time_restriction
      t.time :time_limit
      t.string  :other_note
      t.boolean :days_active , array: true, default: []
      t.timestamps
    end
  end
end
