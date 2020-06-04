# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_04_110027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_kinds", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_product_kinds_on_name", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.bigint "unit_measurement_id", null: false
    t.bigint "product_kind_id", null: false
    t.decimal "current_price", precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_products_on_name", unique: true
    t.index ["product_kind_id"], name: "index_products_on_product_kind_id"
    t.index ["unit_measurement_id"], name: "index_products_on_unit_measurement_id"
  end

  create_table "unit_measurements", force: :cascade do |t|
    t.string "unit_name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_name"], name: "index_unit_measurements_on_unit_name", unique: true
  end

  add_foreign_key "products", "product_kinds"
  add_foreign_key "products", "unit_measurements"
end
