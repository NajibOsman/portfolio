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

ActiveRecord::Schema.define(version: 20170808082305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.text "github"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "views", default: 0
  end

  create_table "projects_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "project_id"
    t.index ["project_id"], name: "index_projects_skills_on_project_id"
    t.index ["skill_id"], name: "index_projects_skills_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.text "name"
    t.float "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "views", default: 0
  end

end