
ActiveRecord::Schema.define(version: 2019_06_01_164427) do

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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "addresses", "locations"
  add_foreign_key "locations", "trips", column: "trips_id"
end
