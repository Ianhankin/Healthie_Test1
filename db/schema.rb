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

ActiveRecord::Schema[8.1].define(version: 2026_08_20_000000) do
  create_table "clients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email_address"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "journals", force: :cascade do |t|
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.string "text"
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_journals_on_client_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "classification"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.integer "provider_id"
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_plans_on_client_id"
    t.index ["provider_id"], name: "index_plans_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email_address"
    t.string "name"
    t.datetime "updated_at", null: false
  end
end
