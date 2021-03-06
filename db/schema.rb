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

ActiveRecord::Schema.define(version: 2018_11_05_113933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attrs", force: :cascade do |t|
    t.bigint "relation_id"
    t.string "name"
    t.string "attr_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relation_id"], name: "index_attrs_on_relation_id"
  end

  create_table "relations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tuples", force: :cascade do |t|
    t.bigint "relation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relation_id"], name: "index_tuples_on_relation_id"
  end

  create_table "values", force: :cascade do |t|
    t.bigint "attribute_id"
    t.bigint "tuple_id"
    t.string "val"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attribute_id"], name: "index_values_on_attribute_id"
    t.index ["tuple_id"], name: "index_values_on_tuple_id"
  end

  add_foreign_key "attrs", "relations"
  add_foreign_key "tuples", "relations"
  add_foreign_key "values", "attrs", column: "attribute_id"
  add_foreign_key "values", "tuples"
end
