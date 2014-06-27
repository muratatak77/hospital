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

ActiveRecord::Schema.define(version: 20140627091710) do

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.text     "consultancy"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio",         limit: 255
    t.integer  "phone",       limit: 255
    t.integer  "manager_id"
  end

  add_index "doctors", ["manager_id"], name: "index_doctors_on_manager_id"

  create_table "hepsi_buradas", force: true do |t|
    t.string   "value"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "housekeepers", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
  end

  create_table "interests", force: true do |t|
    t.string   "value"
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "departman"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.integer  "doctor_id"
    t.integer  "interest_id"
  end

  add_index "patients", ["doctor_id"], name: "index_patients_on_doctor_id"
  add_index "patients", ["interest_id"], name: "index_patients_on_interest_id"

end
