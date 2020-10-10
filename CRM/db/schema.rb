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

ActiveRecord::Schema.define(version: 2020_10_10_004815) do

  create_table "courses", force: :cascade do |t|
    t.integer "department_id", null: false
    t.integer "number"
    t.integer "hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "office"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "professor_id", null: false
    t.integer "year"
    t.integer "semester_id", null: false
    t.integer "students_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "section_number"
    t.index ["course_id"], name: "index_sections_on_course_id"
    t.index ["professor_id"], name: "index_sections_on_professor_id"
    t.index ["semester_id"], name: "index_sections_on_semester_id"
    t.index ["students_id"], name: "index_sections_on_students_id"
  end

  create_table "sections_students", id: false, force: :cascade do |t|
    t.integer "section_id", null: false
    t.integer "student_id", null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "semester"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "sections_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sections_id"], name: "index_students_on_sections_id"
  end

  add_foreign_key "courses", "departments"
  add_foreign_key "sections", "courses"
  add_foreign_key "sections", "professors"
  add_foreign_key "sections", "semesters"
  add_foreign_key "sections", "students", column: "students_id"
  add_foreign_key "students", "sections", column: "sections_id"
end
