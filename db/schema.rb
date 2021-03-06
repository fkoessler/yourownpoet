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

ActiveRecord::Schema.define(version: 20140710125807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.boolean  "active",         default: true
    t.integer  "sex",            default: 0
    t.boolean  "fill_the_blank", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poem_title"
  end

  create_table "relationships", force: true do |t|
    t.string   "name"
    t.string   "male_mirror"
    t.string   "female_mirror"
    t.integer  "category",      default: 0
    t.integer  "sex",           default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verses", force: true do |t|
    t.string   "type"
    t.string   "line_one"
    t.string   "line_two"
    t.string   "line_three"
    t.string   "line_four"
    t.string   "line_five"
    t.boolean  "active",      default: true
    t.integer  "sex",         default: 0
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
