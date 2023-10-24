# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_24_095454) do
  create_table "answers", charset: "utf8", force: :cascade do |t|
    t.bigint "creatstudent_id"
    t.bigint "question_id"
    t.boolean "check"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creatstudent_id"], name: "index_answers_on_creatstudent_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "attendances", charset: "utf8", force: :cascade do |t|
    t.date "dating"
    t.string "attendance"
    t.bigint "student_id"
    t.bigint "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_attendances_on_lecture_id"
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "lectures", charset: "utf8", force: :cascade do |t|
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", charset: "utf8", force: :cascade do |t|
    t.date "dating"
    t.text "question"
    t.bigint "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_questions_on_lecture_id"
  end

  create_table "students", charset: "utf8", force: :cascade do |t|
    t.string "student_number"
    t.string "department"
    t.string "name"
    t.date "birth_day"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_admins", charset: "utf8", force: :cascade do |t|
    t.string "name"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
