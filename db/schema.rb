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

ActiveRecord::Schema.define(version: 20170920181247) do

  create_table "animals", force: :cascade do |t|
    t.string   "animal"
    t.string   "iconDraw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_tags", force: :cascade do |t|
    t.integer "id_pet"
    t.integer "id_tag"
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name",         null: false
    t.float    "latitude",     null: false
    t.float    "longitude",    null: false
    t.string   "address"
    t.string   "photo"
    t.string   "sex"
    t.integer  "race_id"
    t.integer  "user_id"
    t.integer  "situation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["race_id"], name: "index_pets_on_race_id"
    t.index ["situation_id"], name: "index_pets_on_situation_id"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "races", force: :cascade do |t|
    t.string   "race"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_races_on_animal_id"
  end

  create_table "situations", force: :cascade do |t|
    t.string   "situation"
    t.string   "iconColor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "socialMedias", id: false, force: :cascade do |t|
    t.string   "socialMedia"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_socialMedias_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tag"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "telephones", id: false, force: :cascade do |t|
    t.integer  "area"
    t.integer  "number"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_telephones_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cpf"
    t.string   "photo"
    t.string   "sex"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
