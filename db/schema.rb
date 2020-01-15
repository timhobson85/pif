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

ActiveRecord::Schema.define(version: 2020_01_15_041811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.text "subject"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "thing_id"
    t.integer "recipient_id"
    t.integer "sender_id"
  end

  create_table "things", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "act"
    t.integer "thing_type"
    t.string "location"
    t.integer "condition"
    t.integer "urgency"
    t.text "description"
    t.text "address"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.text "bio"
    t.string "image"
  end

end
