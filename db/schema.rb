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

ActiveRecord::Schema.define(version: 2018_12_23_055044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "floor_areas", force: :cascade do |t|
    t.string "unit"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_floor_areas_on_property_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_photos_on_property_id"
  end

  create_table "plot_areas", force: :cascade do |t|
    t.string "unit"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_plot_areas_on_property_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "currency"
    t.decimal "amount"
    t.bigint "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_prices_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string "property_type"
    t.string "url"
    t.string "title"
    t.string "content"
    t.string "eb_type"
    t.string "agency"
    t.integer "rooms"
    t.integer "bathrooms"
    t.integer "parking"
    t.string "city"
    t.string "city_area"
    t.string "region"
    t.string "longitude"
    t.string "latitude"
    t.string "address"
    t.string "eb_id"
    t.string "eb_date"
    t.string "eb_time"
    t.integer "floor_number"
    t.string "eb_year"
    t.boolean "is_new"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postcode"
    t.boolean "published"
  end

  add_foreign_key "floor_areas", "properties"
  add_foreign_key "photos", "properties"
  add_foreign_key "plot_areas", "properties"
  add_foreign_key "prices", "properties"
end
