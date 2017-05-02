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

ActiveRecord::Schema.define(version: 20170501030258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bl_houses", force: :cascade do |t|
    t.integer  "bl_master_id"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bl_master_id"], name: "index_bl_houses_on_bl_master_id", using: :btree
    t.index ["customer_id"], name: "index_bl_houses_on_customer_id", using: :btree
  end

  create_table "bl_masters", force: :cascade do |t|
    t.string   "code_bl"
    t.string   "list_container"
    t.date     "dale_of_berthing"
    t.string   "code_travel"
    t.integer  "shipping_company_id"
    t.integer  "consolidator_id"
    t.integer  "origin_id"
    t.integer  "destination_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["consolidator_id"], name: "index_bl_masters_on_consolidator_id", using: :btree
    t.index ["destination_id"], name: "index_bl_masters_on_destination_id", using: :btree
    t.index ["origin_id"], name: "index_bl_masters_on_origin_id", using: :btree
    t.index ["shipping_company_id"], name: "index_bl_masters_on_shipping_company_id", using: :btree
  end

  create_table "consolidators", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.bigint   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consolidators_customers", id: false, force: :cascade do |t|
    t.integer  "customer_id",     null: false
    t.integer  "consolidator_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["consolidator_id"], name: "index_consolidators_customers_on_consolidator_id", using: :btree
    t.index ["customer_id"], name: "index_consolidators_customers_on_customer_id", using: :btree
  end

  create_table "containers", force: :cascade do |t|
    t.string   "identifier"
    t.string   "size"
    t.string   "type_container"
    t.integer  "shipping_company_id"
    t.integer  "bl_house_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["bl_house_id"], name: "index_containers_on_bl_house_id", using: :btree
    t.index ["shipping_company_id"], name: "index_containers_on_shipping_company_id", using: :btree
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "identification_card"
    t.string   "name"
    t.string   "lastname"
    t.string   "location"
    t.integer  "phone"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "origin_destinations", force: :cascade do |t|
    t.string   "code_location"
    t.string   "location"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.string   "acronym"
    t.string   "size"
    t.integer  "capacity"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_ships_on_shipping_company_id", using: :btree
  end

  add_foreign_key "bl_houses", "bl_masters"
  add_foreign_key "bl_houses", "customers"
  add_foreign_key "bl_masters", "consolidators"
  add_foreign_key "bl_masters", "shipping_companies"
  add_foreign_key "containers", "bl_houses"
  add_foreign_key "containers", "shipping_companies"
  add_foreign_key "ships", "shipping_companies"
end
