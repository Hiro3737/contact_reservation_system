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

ActiveRecord::Schema.define(version: 20191212155052) do

  create_table "bookings", force: :cascade do |t|
    t.string "title", null: false
    t.integer "status", null: false
    t.text "achievement", null: false
    t.text "problem", null: false
    t.text "error_code"
    t.text "tried_thing", null: false
    t.string "ref_url"
    t.datetime "lesson_date", null: false
    t.text "lesson_content"
    t.text "remarks"
    t.boolean "google_flg", default: false
    t.integer "teacher_id"
    t.text "comment"
    t.integer "user_id"
    t.integer "tag_id"
    t.integer "point_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["point_id"], name: "index_bookings_on_point_id"
    t.index ["tag_id"], name: "index_bookings_on_tag_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "points", force: :cascade do |t|
    t.string "item", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "job"
    t.boolean "gender"
    t.integer "age"
    t.datetime "enrollment"
    t.string "skill"
    t.time "holiday_from"
    t.time "time_range_from"
    t.integer "user_type", default: 3
    t.string "line"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.time "time_range_to"
    t.time "holiday_to"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
