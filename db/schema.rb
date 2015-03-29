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

ActiveRecord::Schema.define(version: 20150329015246) do

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

  create_table "role_types", force: true do |t|
    t.string   "roleName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
