ActiveRecord::Schema.define(version: 2019_06_01_163827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_addresses_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "attraction"
    t.string "rating"
    t.string "note"
    t.bigint "trips_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trips_id"], name: "index_locations_on_trips_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.string "people"
    t.string "stops"
    t.string "transportation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "locations"
  add_foreign_key "locations", "trips", column: "trips_id"
end
