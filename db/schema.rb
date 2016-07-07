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

ActiveRecord::Schema.define(version: 20160706021952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "caption"
    t.boolean  "is_primary"
    t.integer  "bigo_image_id"
    t.string   "photo_url"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "skill_level"
    t.integer  "zipcode"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "modified_recipes", force: :cascade do |t|
    t.string   "title"
    t.integer  "total_time"
    t.string   "yield_unit"
    t.integer  "yield_number"
    t.text     "instructions"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pantry_items", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "ingredient_id"
    t.date     "expiration_date"
    t.integer  "quantity"
    t.string   "units"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.text     "instructions"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "total_time"
    t.string   "title"
    t.string   "source_id"
    t.string   "yield_unit"
    t.string   "description"
    t.string   "cuisine"
    t.string   "category"
    t.integer  "yield_number"
  end

  create_table "required_ingredients", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.decimal  "quantity"
    t.string   "units"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
