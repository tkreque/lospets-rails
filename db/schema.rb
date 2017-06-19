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

ActiveRecord::Schema.define(version: 20170611180802) do

  create_table "animals", force: :cascade do |t|
    t.string   "animal"
    t.string   "iconDraw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_tags", id: false, force: :cascade do |t|
    t.integer "pet_id"
    t.integer "tag_id"
    t.index ["pet_id"], name: "index_pet_tags_on_pet_id"
    t.index ["tag_id"], name: "index_pet_tags_on_tag_id"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
