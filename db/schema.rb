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

ActiveRecord::Schema.define(version: 20160620185643) do

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.string   "phone"
    t.string   "type"
    t.string   "email"
    t.string   "vat"
    t.boolean  "pa_system"
    t.boolean  "garden"
    t.boolean  "wifi"
    t.text     "extra_info"
    t.boolean  "own_drinks"
    t.boolean  "own_drinks_mandatory"
    t.boolean  "parking"
    t.integer  "person_capacity"
    t.integer  "parking_spaces"
    t.string   "venue_type"
    t.string   "genre"
    t.float    "years_experience"
    t.text     "references"
    t.string   "artist_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
