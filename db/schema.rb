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

ActiveRecord::Schema.define(version: 20140521132926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.string   "actor_screen_name"
    t.string   "source_service_name",                 null: false
    t.string   "source_type",                         null: false
    t.text     "description"
    t.text     "permalink"
    t.boolean  "deleted",             default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",             default: 0,     null: false
  end

  create_table "actor_users", force: true do |t|
    t.integer  "user_id",             null: false
    t.string   "actor_screen_name",   null: false
    t.string   "source_service_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "tweet_id",              limit: 8
    t.string   "screen_name"
    t.text     "tweet_text"
    t.boolean  "deleted",                         default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "in_reply_to_status_id", limit: 8
  end

  create_table "users", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
