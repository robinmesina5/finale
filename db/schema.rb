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

ActiveRecord::Schema.define(version: 20150327153450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "family_trees", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "relative_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "relatives", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "tree_id"
    t.string   "address"
    t.integer  "age"
    t.string   "birthday"
    t.string   "date_of_death"
    t.string   "father"
    t.string   "mother"
    t.string   "child_one"
    t.string   "occupation"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "child_two"
    t.string   "child_three"
    t.string   "child_four"
    t.string   "child_five"
    t.string   "child_six"
  end

  create_table "tree_roles", force: :cascade do |t|
    t.integer  "family_id"
    t.integer  "user_id"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
