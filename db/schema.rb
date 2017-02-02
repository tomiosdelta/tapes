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

ActiveRecord::Schema.define(version: 20170129175408) do

  create_table "instruments", force: :cascade do |t|
    t.string   "song_id",        limit: 255
    t.string   "name",           limit: 255
    t.string   "manufacturer",   limit: 255
    t.string   "material",       limit: 255
    t.string   "origin_country", limit: 255
    t.integer  "quality",        limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "tape_id",    limit: 4
    t.string   "title",      limit: 255
    t.string   "artist",     limit: 255
    t.integer  "duration",   limit: 4
    t.string   "album",      limit: 255
    t.integer  "year",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "tapes", force: :cascade do |t|
    t.string   "name",       limit: 25
    t.integer  "duration",   limit: 4
    t.string   "make",       limit: 25, default: "Sony"
    t.string   "material",   limit: 30
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
