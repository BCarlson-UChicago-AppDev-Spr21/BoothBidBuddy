# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_02_204349) do

  create_table "backpacked_sections", force: :cascade do |t|
    t.integer "user_id"
    t.integer "planned_bid"
    t.integer "section_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.text "comment"
    t.integer "course_id"
    t.integer "professor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.integer "course_comments_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.integer "sections_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.string "quarter"
    t.string "year"
    t.string "day"
    t.string "time"
    t.integer "instructor_id"
    t.integer "phase_1_enrollment"
    t.integer "phase_1_seats_available"
    t.integer "phase_1_price"
    t.integer "phase_2_enrollment"
    t.integer "phase_2_seats_available"
    t.string "phase_2_price"
    t.integer "phase_new1_enrollment"
    t.integer "phase_new1_seats_available"
    t.integer "phase_new1_price"
    t.integer "phase_new2_enrollment"
    t.integer "phase_new_2_seats_available"
    t.integer "phase_new2_price"
    t.integer "course_id"
    t.integer "section_number"
    t.integer "phase_3_enrollment"
    t.integer "phase_3_seats_available"
    t.integer "phase_3_price"
    t.integer "phase_4_enrollment"
    t.integer "phase_4_seats_available"
    t.integer "phase_4_price"
    t.integer "total_seats_offered"
    t.string "program"
    t.integer "backpacked_sections_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.integer "graduation_year"
    t.integer "bid_wealth"
    t.integer "backpacked_courses_count"
    t.integer "course_comments_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
