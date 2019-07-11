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

ActiveRecord::Schema.define(version: 720190708131420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktail_ingredients", force: :cascade do |t|
    t.bigint "cocktail_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_cocktail_ingredients_on_cocktail_id"
    t.index ["ingredient_id"], name: "index_cocktail_ingredients_on_ingredient_id"
  end

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.text "recipe"
    t.bigint "user_id"
    t.bigint "glass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["glass_id"], name: "index_cocktails_on_glass_id"
    t.index ["user_id"], name: "index_cocktails_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "cocktail_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_comments_on_cocktail_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "glasses", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_ingredients_on_type_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "cocktail_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cocktail_id"], name: "index_likes_on_cocktail_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cocktail_ingredients", "cocktails"
  add_foreign_key "cocktail_ingredients", "ingredients"
  add_foreign_key "cocktails", "glasses"
  add_foreign_key "cocktails", "users"
  add_foreign_key "comments", "cocktails"
  add_foreign_key "comments", "users"
  add_foreign_key "ingredients", "types"
  add_foreign_key "likes", "cocktails"
  add_foreign_key "likes", "users"
end
