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

ActiveRecord::Schema.define(version: 20151111110149) do

  create_table "cars", force: :cascade do |t|
    t.string   "brand"
    t.date     "purchased_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "person_id"
    t.string   "public_id"
  end

  add_index "cars", ["person_id"], name: "index_cars_on_person_id"

  create_table "logbooks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "car_id"
    t.string   "public_id"
  end

  add_index "logbooks", ["car_id"], name: "index_logbooks_on_car_id"

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
    t.integer  "car_id"
    t.string   "public_id"
  end

  add_index "orders", ["car_id"], name: "index_orders_on_car_id"
  add_index "orders", ["person_id"], name: "index_orders_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.string   "city"
    t.string   "thoroughfare"
    t.string   "postal_code"
    t.string   "country"
    t.integer  "gender"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "public_id"
    t.integer  "phone"
    t.string   "email"
  end

end
