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

ActiveRecord::Schema.define(version: 20150419015711) do

  create_table "address_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_people", ["address_id"], name: "index_address_people_on_address_id"
  add_index "address_people", ["person_id"], name: "index_address_people_on_person_id"

  create_table "addresses", force: true do |t|
    t.text     "streetInfo"
    t.text     "additional1"
    t.text     "additional2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.text     "firstName"
    t.text     "lastName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "person_role_types", force: true do |t|
    t.integer  "person_id"
    t.integer  "role_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "person_role_types", ["person_id"], name: "index_person_role_types_on_person_id"
  add_index "person_role_types", ["role_type_id"], name: "index_person_role_types_on_role_type_id"

  create_table "phone_number_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "phone_number_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_number_people", ["person_id"], name: "index_phone_number_people_on_person_id"
  add_index "phone_number_people", ["phone_number_id"], name: "index_phone_number_people_on_phone_number_id"

  create_table "phone_numbers", force: true do |t|
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_types", force: true do |t|
    t.string   "roleName"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
