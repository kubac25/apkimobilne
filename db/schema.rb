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

ActiveRecord::Schema.define(version: 20171016144800) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "body"
    t.integer "student_id"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_posts_on_student_id"
    t.index ["topic_id"], name: "index_posts_on_topic_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "index"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_courses", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_students_courses_on_course_id"
    t.index ["student_id"], name: "index_students_courses_on_student_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.integer "student_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_topics_on_course_id"
    t.index ["student_id"], name: "index_topics_on_student_id"
  end

end