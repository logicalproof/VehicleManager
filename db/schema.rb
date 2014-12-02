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

ActiveRecord::Schema.define(version: 20141202194932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mileages", force: true do |t|
    t.integer  "miles"
    t.integer  "vehicle_id", null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mileages", ["user_id"], name: "index_mileages_on_user_id", using: :btree
  add_index "mileages", ["vehicle_id"], name: "index_mileages_on_vehicle_id", using: :btree

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.integer  "mileage_interval"
    t.integer  "month_interval"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicle_assignments", ["user_id"], name: "index_vehicle_assignments_on_user_id", using: :btree
  add_index "vehicle_assignments", ["vehicle_id"], name: "index_vehicle_assignments_on_vehicle_id", using: :btree

  create_table "vehicle_inspection_reports", force: true do |t|
    t.boolean  "tire_wear"
    t.string   "tire_wear_comment"
    t.boolean  "exhaust"
    t.boolean  "drive_belts"
    t.boolean  "radiator_coolant"
    t.boolean  "radiator_hoses"
    t.boolean  "heater_hoses"
    t.boolean  "battery_cables"
    t.boolean  "spark_plug_wires"
    t.boolean  "oil_filter"
    t.boolean  "air_filter"
    t.boolean  "fuel_filter"
    t.boolean  "wiper_blades"
    t.boolean  "headlights"
    t.boolean  "tail_lights"
    t.boolean  "turn_signals"
    t.boolean  "air_conditioner"
    t.boolean  "seatbelts"
    t.boolean  "mirrors"
    t.boolean  "windshield"
    t.boolean  "rear_window"
    t.boolean  "side_windows"
    t.string   "exhaust_comment"
    t.string   "drive_belts_comment"
    t.string   "radiator_coolant_comment"
    t.string   "radiator_hoses_comment"
    t.string   "heater_hoses_comment"
    t.string   "battery_cables_comment"
    t.string   "spark_plug_wires_comment"
    t.string   "oil_filter_comment"
    t.string   "air_filter_comment"
    t.string   "fuel_filter_comment"
    t.string   "wiper_blades_comment"
    t.string   "headlights_comment"
    t.string   "tail_lights_comment"
    t.string   "turn_signals_comment"
    t.string   "air_conditioner_comment"
    t.string   "seatbelts_comment"
    t.string   "mirrors_comment"
    t.string   "windshield_comment"
    t.string   "rear_window_comment"
    t.string   "side_windows_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "brake_lights"
    t.string   "brake_lights_comment"
    t.boolean  "emergency_brake_adjustment"
    t.string   "emergency_brake_adjustment_comment"
    t.string   "user_id"
    t.integer  "mileage"
    t.integer  "vehicle_service_record_id"
    t.boolean  "oil_change"
    t.string   "oil_change_comments"
    t.boolean  "transmission_service"
    t.boolean  "brake_service"
    t.string   "brake_service_comments"
    t.string   "transmission_service_comments"
    t.boolean  "battery"
    t.string   "battery_comment"
    t.boolean  "tires_rotated"
    t.string   "tires_rotated_comment"
  end

  add_index "vehicle_inspection_reports", ["user_id"], name: "index_vehicle_inspection_reports_on_user_id", using: :btree
  add_index "vehicle_inspection_reports", ["vehicle_service_record_id"], name: "index_vehicle_inspection_reports_on_vehicle_service_record_id", using: :btree

  create_table "vehicle_service_records", force: true do |t|
    t.integer  "oil_change_mileage"
    t.integer  "brake_service_mileage"
    t.integer  "transmission_service_mileage"
    t.integer  "oil_filter_mileage"
    t.integer  "air_filter_mileage"
    t.integer  "battery_mileage"
    t.integer  "tires_rotated_mileage"
    t.date     "oil_change"
    t.date     "brake_service"
    t.date     "transmission_service"
    t.date     "oil_filter"
    t.date     "air_filter"
    t.date     "battery"
    t.date     "tires_rotated"
    t.date     "last_inspection_date"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicle_service_records", ["vehicle_id"], name: "index_vehicle_service_records_on_vehicle_id", using: :btree

  create_table "vehicles", force: true do |t|
    t.string   "number"
    t.integer  "current_mileage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.date     "purchase_date"
    t.boolean  "sold"
    t.date     "sold_date"
  end

  create_table "weekly_reports", force: true do |t|
    t.boolean  "appearance"
    t.boolean  "tires"
    t.boolean  "lights"
    t.boolean  "mechanical"
    t.boolean  "electrical"
    t.boolean  "fluid_levels"
    t.integer  "mileage"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id"
    t.integer  "user_id"
  end

  add_index "weekly_reports", ["user_id"], name: "index_weekly_reports_on_user_id", using: :btree
  add_index "weekly_reports", ["vehicle_id"], name: "index_weekly_reports_on_vehicle_id", using: :btree

end
