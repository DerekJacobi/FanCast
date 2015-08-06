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

ActiveRecord::Schema.define(version: 20150806193146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "broadcasts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "broadcasts", ["game_id"], name: "index_broadcasts_on_game_id", using: :btree
  add_index "broadcasts", ["user_id"], name: "index_broadcasts_on_user_id", using: :btree

  create_table "follow_teams", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "follow_teams", ["user_id"], name: "index_follow_teams_on_user_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "user_id"
    t.boolean  "active",      default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "follows", ["user_id"], name: "index_follows_on_user_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "date"
    t.string   "time"
    t.string   "location"
    t.string   "league"
    t.string   "home_team"
    t.string   "away_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.json   "content"
    t.string "league"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "location"
    t.string   "mixlr"
    t.integer  "role"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_foreign_key "broadcasts", "games"
  add_foreign_key "broadcasts", "users"
  add_foreign_key "follow_teams", "users"
  add_foreign_key "follows", "users"
end
