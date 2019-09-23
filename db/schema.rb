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

ActiveRecord::Schema.define(version: 20190923194550) do

  create_table "inventory_items", force: :cascade do |t|
    t.string   "item_name"
    t.string   "item_brand"
    t.string   "item_make"
    t.text     "item_description"
    t.integer  "item_condition"
    t.string   "item_value"
    t.boolean  "in_stock",         default: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "item_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "verified"
    t.boolean  "flagged"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.text     "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.index ["email"], name: "index_item_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_item_owners_on_reset_password_token", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "total_due"
    t.string   "total_paid"
    t.boolean  "packaged"
    t.boolean  "shipped_to_renter"
    t.boolean  "delivered_to_renter"
    t.boolean  "returned_by_renter"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "pickup_request_items", force: :cascade do |t|
    t.string   "item_name"
    t.string   "item_brand"
    t.string   "item_make"
    t.text     "item_description"
    t.integer  "item_condition"
    t.string   "item_market_value"
    t.boolean  "added_to_inventory", default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "pickup_request_id"
  end

  create_table "pickup_requests", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "item_owner_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_renters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_renters_on_reset_password_token", unique: true
  end

end
