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

ActiveRecord::Schema.define(version: 20180205133802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "vin"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.decimal "price"
    t.bigint "dealer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.float "odometer"
    t.string "condition"
    t.integer "cylinders"
    t.string "drive_type"
    t.string "fuel_type"
    t.string "posting_language"
    t.string "title_status"
    t.string "transmission"
    t.string "trim"
    t.string "engine"
    t.string "sub_model"
    t.string "exterior_color"
    t.string "interior_color"
    t.string "warranty"
    t.string "power_options"
    t.boolean "disability_equipped"
    t.string "posting_title"
    t.string "vehicle_size"
    t.string "drive_side"
    t.text "options"
    t.text "safety"
    t.string "custom_exterior"
    t.string "custom_interior"
    t.boolean "carfax_available"
    t.string "body_type"
    t.boolean "sold"
    t.integer "stock_number"
    t.index ["dealer_id"], name: "index_cars_on_dealer_id"
  end

  create_table "dealers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "dealership_name"
    t.string "dealership_country"
    t.string "dealership_state"
    t.string "dealership_city"
    t.integer "dealership_zip"
    t.string "dealership_street"
    t.index ["email"], name: "index_dealers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_dealers_on_reset_password_token", unique: true
  end

  create_table "leads", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_leads_on_car_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_type"
    t.boolean "open"
    t.text "description"
    t.bigint "lead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "task_name"
    t.index ["lead_id"], name: "index_tasks_on_lead_id"
  end

  add_foreign_key "cars", "dealers"
  add_foreign_key "leads", "cars"
  add_foreign_key "tasks", "leads"
end
