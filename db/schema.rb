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

ActiveRecord::Schema.define(version: 2018_12_27_195550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questionnaires", force: :cascade do |t|
    t.integer "user_id"
    t.string "job_title"
    t.string "working_hours_from"
    t.boolean "take_breaks"
    t.integer "breaks_interval"
    t.integer "break_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "working_hours_to"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.string "task_type"
    t.integer "task_quantity"
    t.integer "each_task_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "check_time"
    t.date "task_date"
    t.integer "target_quantity"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
