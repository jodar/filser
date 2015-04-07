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

ActiveRecord::Schema.define(version: 20150407000653) do

  create_table "episodios", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "temporada_id"
  end

  add_index "episodios", ["temporada_id"], name: "index_episodios_on_temporada_id"

  create_table "movies", force: true do |t|
    t.string   "title"
    t.integer  "year"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "series", force: true do |t|
    t.string   "title"
    t.string   "episodes"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temporadas", force: true do |t|
    t.string   "title"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "series_id"
  end

  add_index "temporadas", ["series_id"], name: "index_temporadas_on_series_id"

end
