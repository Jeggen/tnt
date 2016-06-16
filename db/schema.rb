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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160615201252) do
=======
ActiveRecord::Schema.define(version: 20160615194220) do
>>>>>>> e2b88248311be93d2a43d58ad0b82c701c719255

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "toilets", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.decimal  "price"
    t.string   "cover"
    t.string   "cleanliness"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.integer  "user_id"
    t.string   "cover"
  end

  add_index "toilets", ["user_id"], name: "index_toilets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "toilet_id"
    t.integer  "stars"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "visits", ["toilet_id"], name: "index_visits_on_toilet_id", using: :btree
  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree

  add_foreign_key "toilets", "users"
  add_foreign_key "visits", "toilets"
  add_foreign_key "visits", "users"
end
