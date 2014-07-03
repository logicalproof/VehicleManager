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

ActiveRecord::Schema.define(version: 20140703140155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "service_records", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vehicle_id"
  end

  add_index "service_records", ["vehicle_id"], name: "index_service_records_on_vehicle_id", using: :btree

  create_table "service_types", force: true do |t|
    t.string   "name"
    t.integer  "mileage_interval"
    t.integer  "month_interval"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_services", force: true do |t|
    t.date     "date_of_service"
    t.integer  "mileage_at_service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "service_record_id"
    t.integer  "service_type_id"
  end

  add_index "vehicle_services", ["service_record_id"], name: "index_vehicle_services_on_service_record_id", using: :btree
  add_index "vehicle_services", ["service_type_id"], name: "index_vehicle_services_on_service_type_id", using: :btree

  create_table "vehicles", force: true do |t|
    t.string   "number"
    t.integer  "current_mileage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
