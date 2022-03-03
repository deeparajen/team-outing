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

ActiveRecord::Schema.define(version: 2022_03_03_033635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blind_dates", force: :cascade do |t|
    t.datetime "outing_date"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "name"
    t.string "empl_no"
    t.string "email"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees_teams", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employees_teams_on_employee_id"
    t.index ["team_id"], name: "index_employees_teams_on_team_id"
  end

  create_table "group_details", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "employee_id"
    t.boolean "is_leader"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_group_details_on_employee_id"
    t.index ["group_id"], name: "index_group_details_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.bigint "blind_date_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blind_date_id"], name: "index_groups_on_blind_date_id"
  end

  create_table "interested_employees", force: :cascade do |t|
    t.bigint "blind_dates_id"
    t.bigint "employees_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blind_dates_id"], name: "index_interested_employees_on_blind_dates_id"
    t.index ["employees_id"], name: "index_interested_employees_on_employees_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
