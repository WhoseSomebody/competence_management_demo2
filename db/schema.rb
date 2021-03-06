# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151215055200) do

  create_table "accountabilities", force: :cascade do |t|
    t.text     "description"
    t.integer  "profession_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "accountabilities", ["profession_id"], name: "index_accountabilities_on_profession_id"

  create_table "attainments", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attainments_competences", id: false, force: :cascade do |t|
    t.integer "competence_id"
    t.integer "attainment_id"
  end

  add_index "attainments_competences", ["attainment_id"], name: "index_attainments_competences_on_attainment_id"
  add_index "attainments_competences", ["competence_id"], name: "index_attainments_competences_on_competence_id"

  create_table "competences", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competences_knowledges", id: false, force: :cascade do |t|
    t.integer "competence_id"
    t.integer "knowledge_id"
  end

  add_index "competences_knowledges", ["competence_id"], name: "index_competences_knowledges_on_competence_id"
  add_index "competences_knowledges", ["knowledge_id"], name: "index_competences_knowledges_on_knowledge_id"

  create_table "competences_skills", id: false, force: :cascade do |t|
    t.integer "skill_id"
    t.integer "competence_id"
  end

  add_index "competences_skills", ["competence_id"], name: "index_competences_skills_on_competence_id"
  add_index "competences_skills", ["skill_id"], name: "index_competences_skills_on_skill_id"

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "content"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "knowledges", force: :cascade do |t|
    t.string   "description"
    t.integer  "discipline_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "knowledges", ["discipline_id"], name: "index_knowledges_on_discipline_id"

  create_table "professions", force: :cascade do |t|
    t.integer  "min_level_of_compet_test"
    t.string   "profession_name"
    t.integer  "level"
    t.text     "mission"
    t.text     "summary_statement"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.string   "name"
    t.integer  "profession_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "qualifications", ["profession_id"], name: "index_qualifications_on_profession_id"

  create_table "responsibilities", force: :cascade do |t|
    t.text     "description"
    t.integer  "profession_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "responsibilities", ["profession_id"], name: "index_responsibilities_on_profession_id"

  create_table "skills", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

# Could not dump table "sqlite_stat1" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

# Could not dump table "sqlite_stat4" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "statistics", force: :cascade do |t|
    t.string   "user"
    t.string   "tname"
    t.string   "score"
    t.string   "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_answers", force: :cascade do |t|
    t.integer  "attempt_id"
    t.integer  "question_id"
    t.integer  "option_id"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_attempts", force: :cascade do |t|
    t.integer  "participant_id"
    t.string   "participant_type"
    t.integer  "survey_id"
    t.boolean  "winner"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_options", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "weight",      default: 0
    t.string   "text"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_surveys", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "attempts_number", default: 0
    t.boolean  "finished",        default: false
    t.boolean  "active",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "profession_id"
    t.integer  "competence_id"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tasks", ["competence_id"], name: "index_tasks_on_competence_id"
  add_index "tasks", ["profession_id"], name: "index_tasks_on_profession_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "login"
    t.string   "password_digest"
    t.string   "email"
    t.integer  "profession_id"
    t.integer  "rating"
    t.integer  "group"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["profession_id"], name: "index_users_on_profession_id"

end
