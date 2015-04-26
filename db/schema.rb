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

ActiveRecord::Schema.define(version: 20150426160316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "slack_users", force: :cascade do |t|
    t.string   "slack_id",            null: false
    t.string   "name",                null: false
    t.boolean  "deleted",             null: false
    t.string   "color"
    t.text     "profile",             null: false
    t.boolean  "is_admin"
    t.boolean  "is_owner"
    t.boolean  "is_primary_owner"
    t.boolean  "is_restricted"
    t.boolean  "is_ultra_restricted"
    t.boolean  "has_2fa"
    t.boolean  "has_files"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "slack_team",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
