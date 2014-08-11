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

ActiveRecord::Schema.define(version: 20140809154731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "computers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts", force: true do |t|
    t.string   "difficulty_level"
    t.string   "draft_type"
    t.integer  "number_of_rounds"
    t.integer  "number_of_players"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drafts", ["user_id"], name: "index_drafts_on_user_id", using: :btree

  create_table "picks", force: true do |t|
    t.integer  "pick_number"
    t.integer  "player_id"
    t.integer  "user_id"
    t.integer  "draft_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "picks", ["draft_id"], name: "index_picks_on_draft_id", using: :btree
  add_index "picks", ["player_id"], name: "index_picks_on_player_id", using: :btree
  add_index "picks", ["user_id"], name: "index_picks_on_user_id", using: :btree

  create_table "players", force: true do |t|
    t.integer  "rank"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.integer  "bye_week"
    t.float    "ADP"
    t.integer  "pick_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["pick_id"], name: "index_players_on_pick_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
