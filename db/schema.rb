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

ActiveRecord::Schema.define(version: 20170824183325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities_extendeds", force: :cascade do |t|
    t.string "city"
    t.string "state_code"
    t.integer "zip"
    t.float "latitude"
    t.float "longitude"
    t.string "county"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interview_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interviews", force: :cascade do |t|
    t.string "interview_number"
    t.bigint "position_id"
    t.bigint "interview_type_id"
    t.text "interview_comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interview_type_id"], name: "index_interviews_on_interview_type_id"
    t.index ["position_id"], name: "index_interviews_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "position"
    t.bigint "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_positions_on_business_id"
  end

  create_table "project_catagories", force: :cascade do |t|
    t.string "catagory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_catagories", force: :cascade do |t|
    t.string "question"
    t.bigint "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_question_catagories_on_report_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "issue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "interviews", "interview_types"
  add_foreign_key "interviews", "positions"
  add_foreign_key "positions", "businesses"
  add_foreign_key "question_catagories", "reports"
end
