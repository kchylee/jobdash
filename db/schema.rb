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

ActiveRecord::Schema.define(version: 20170810145750) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "user_id"
    t.string "company"
    t.string "job_title"
    t.datetime "applied_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "connections", force: :cascade do |t|
    t.bigint "event_id"
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "job_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_connections_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.bigint "application_id"
    t.bigint "connection_id"
    t.datetime "date"
    t.string "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_interviews_on_application_id"
    t.index ["connection_id"], name: "index_interviews_on_connection_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "users"
  add_foreign_key "connections", "events"
  add_foreign_key "events", "users"
  add_foreign_key "interviews", "applications"
  add_foreign_key "interviews", "connections"
end
