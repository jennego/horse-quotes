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

ActiveRecord::Schema.define(version: 2019_05_19_045740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "author_first"
    t.string "author_last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quote_id"
    t.index ["quote_id"], name: "index_categories_on_quote_id"
  end

  create_table "categorizing", force: :cascade do |t|
    t.bigint "quote_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_categorizing_on_category_id"
    t.index ["quote_id"], name: "index_categorizing_on_quote_id"
  end

  create_table "categorizings", force: :cascade do |t|
    t.bigint "quote_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorizings_on_category_id"
    t.index ["quote_id"], name: "index_categorizings_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "quotetext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.string "source"
    t.index ["author_id"], name: "index_quotes_on_author_id"
  end

  add_foreign_key "categories", "quotes"
  add_foreign_key "categorizing", "categories"
  add_foreign_key "categorizing", "quotes"
  add_foreign_key "categorizings", "categories"
  add_foreign_key "categorizings", "quotes"
  add_foreign_key "quotes", "authors"
end
