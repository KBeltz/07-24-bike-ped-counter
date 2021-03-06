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

ActiveRecord::Schema.define(version: 20150724170058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cyclists", force: :cascade do |t|
    t.integer  "female_with_helmet"
    t.integer  "female_no_helmet"
    t.integer  "female_sidewalk"
    t.integer  "female_wrong_way"
    t.integer  "male_with_helmet"
    t.integer  "male_no_helmet"
    t.integer  "male_sidewalk"
    t.integer  "male_wrong_way"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location_name"
    t.string   "url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pedestrians", force: :cascade do |t|
    t.integer  "female"
    t.integer  "male"
    t.integer  "disabled"
    t.integer  "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.boolean  "admin"
    t.integer  "location_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
