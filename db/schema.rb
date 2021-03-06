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

ActiveRecord::Schema.define(version: 20150514054049) do

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

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "class_members", force: true do |t|
    t.integer  "student_class_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "class_members", ["student_class_id"], name: "index_class_members_on_student_class_id"
  add_index "class_members", ["student_id"], name: "index_class_members_on_student_id"

  create_table "department_people", force: true do |t|
    t.integer  "department_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "department_people", ["department_id"], name: "index_department_people_on_department_id"
  add_index "department_people", ["person_id"], name: "index_department_people_on_person_id"

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "email_people", ["email_id"], name: "index_email_people_on_email_id"
  add_index "email_people", ["person_id"], name: "index_email_people_on_person_id"

  create_table "emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extension_people", force: true do |t|
    t.integer  "extension_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "extension_people", ["extension_id"], name: "index_extension_people_on_extension_id"
  add_index "extension_people", ["person_id"], name: "index_extension_people_on_person_id"

  create_table "extensions", force: true do |t|
    t.integer  "ext"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", force: true do |t|
    t.string   "familyName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_children", force: true do |t|
    t.integer  "family_id"
    t.integer  "child_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "family_children", ["child_id"], name: "index_family_children_on_child_id"
  add_index "family_children", ["family_id"], name: "index_family_children_on_family_id"

  create_table "family_parents", force: true do |t|
    t.integer  "family_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "family_parents", ["family_id"], name: "index_family_parents_on_family_id"
  add_index "family_parents", ["parent_id"], name: "index_family_parents_on_parent_id"

  create_table "gender_people", force: true do |t|
    t.integer  "gender_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gender_people", ["gender_id"], name: "index_gender_people_on_gender_id"
  add_index "gender_people", ["person_id"], name: "index_gender_people_on_person_id"

  create_table "genders", force: true do |t|
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grade_level_teachers", force: true do |t|
    t.integer  "grade_level_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grade_level_teachers", ["grade_level_id"], name: "index_grade_level_teachers_on_grade_level_id"
  add_index "grade_level_teachers", ["teacher_id"], name: "index_grade_level_teachers_on_teacher_id"

  create_table "grade_levels", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "name_title_people", force: true do |t|
    t.integer  "name_title_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "name_title_people", ["name_title_id"], name: "index_name_title_people_on_name_title_id"
  add_index "name_title_people", ["person_id"], name: "index_name_title_people_on_person_id"

  create_table "name_titles", force: true do |t|
    t.string   "title"
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

  create_table "position_people", force: true do |t|
    t.integer  "position_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "position_people", ["person_id"], name: "index_position_people_on_person_id"
  add_index "position_people", ["position_id"], name: "index_position_people_on_position_id"

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_types", force: true do |t|
    t.string   "roleName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_people", force: true do |t|
    t.integer  "room_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "room_people", ["person_id"], name: "index_room_people_on_person_id"
  add_index "room_people", ["room_id"], name: "index_room_people_on_room_id"

  create_table "rooms", force: true do |t|
    t.string   "room"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_classes", force: true do |t|
    t.integer  "grade_level_teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_classes", ["grade_level_teacher_id"], name: "index_student_classes_on_grade_level_teacher_id"

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
