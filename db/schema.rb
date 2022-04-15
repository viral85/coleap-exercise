# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_15_110741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "vehicle_colors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicle_colors_vehicles", id: false, force: :cascade do |t|
    t.bigint "vehicle_color_id"
    t.bigint "vehicle_id"
    t.index ["vehicle_color_id"], name: "index_vehicle_colors_vehicles_on_vehicle_color_id"
    t.index ["vehicle_id"], name: "index_vehicle_colors_vehicles_on_vehicle_id"
  end

  create_table "vehicle_makers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "model"
    t.integer "price"
    t.string "price_currency"
    t.string "photo_url"
    t.bigint "vehicle_maker_id"
    t.integer "range"
    t.string "range_unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["vehicle_maker_id"], name: "index_vehicles_on_vehicle_maker_id"
  end

end
