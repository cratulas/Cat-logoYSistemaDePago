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

ActiveRecord::Schema.define(version: 2021_08_09_043609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_product_digitals", id: false, force: :cascade do |t|
    t.bigint "product_digital_id"
    t.bigint "category_id", null: false
    t.index ["product_digital_id"], name: "digital_index"
  end

  create_table "categories_product_fisicals", id: false, force: :cascade do |t|
    t.bigint "product_fisical_id"
    t.bigint "category_id", null: false
    t.index ["product_fisical_id"], name: "fisical_index"
  end

  create_table "photos", force: :cascade do |t|
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_photos_on_imageable_type_and_imageable_id"
  end

  create_table "product_digitals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "stock"
    t.decimal "price"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_fisicals", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.text "description"
    t.integer "stock"
    t.decimal "price"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories_product_digitals", "product_digitals"
  add_foreign_key "categories_product_fisicals", "product_fisicals"
end
