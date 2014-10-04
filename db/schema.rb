# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141003070028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_restrictions", force: true do |t|
    t.integer  "parking_spot_id"
    t.decimal  "cost_per_hour"
    t.time     "beg_time_restriction"
    t.time     "end_time_restriction"
    t.integer  "hour_time_restriction_duration"
    t.integer  "minute_time_restriction_durection"
    t.boolean  "active_monday"
    t.boolean  "active_tuesday"
    t.boolean  "active_wednesday"
    t.boolean  "active_thursday"
    t.boolean  "active_friday"
    t.boolean  "active_saturday"
    t.boolean  "active_sunday"
    t.integer  "parking_spots_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parking_restrictions", ["parking_spots_id"], name: "index_parking_restrictions_on_parking_spots_id", using: :btree

  create_table "parking_spots", force: true do |t|
    t.decimal  "lat"
    t.decimal  "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
