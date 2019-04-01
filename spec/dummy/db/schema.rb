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

ActiveRecord::Schema.define(version: 2018_07_26_140712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "api_user_auth_auth_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "code", default: ""
    t.uuid "auth_tokens", default: [], array: true
    t.jsonb "user_provider_data", default: {}
    t.string "provider", default: "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_api_user_auth_auth_users_on_email", unique: true
  end

  create_table "api_user_auth_provider_tokens", force: :cascade do |t|
    t.bigint "auth_user_id"
    t.integer "provider"
    t.string "user_id", null: false
    t.jsonb "user_data", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auth_user_id"], name: "index_api_user_auth_provider_tokens_on_auth_user_id"
  end

end
