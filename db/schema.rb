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

ActiveRecord::Schema.define(version: 20170509164850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.integer  "attended_event_id"
    t.integer  "attendee_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["attended_event_id"], name: "index_attendances_on_attended_event_id", using: :btree
    t.index ["attendee_id"], name: "index_attendances_on_attendee_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "venue"
    t.string   "picture"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "slug"
    t.string   "address"
    t.datetime "date_and_time"
    t.index ["address"], name: "index_events_on_address", using: :btree
    t.index ["category_id"], name: "index_events_on_category_id", using: :btree
    t.index ["date_and_time"], name: "index_events_on_date_and_time", using: :btree
    t.index ["longitude", "latitude"], name: "index_events_on_longitude_and_latitude", using: :btree
    t.index ["picture"], name: "index_events_on_picture", using: :btree
    t.index ["slug"], name: "index_events_on_slug", using: :btree
    t.index ["title"], name: "index_events_on_title", using: :btree
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
    t.index ["venue"], name: "index_events_on_venue", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "slug"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "events", "categories"
  add_foreign_key "events", "users"
end
