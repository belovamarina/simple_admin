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

ActiveRecord::Schema.define(version: 20170810123746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "simple_admin_entities", force: :cascade do |t|
    t.string   "model_klass_name"
    t.string   "model_plural_name"
    t.string   "label"
    t.boolean  "status",            default: true
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "simple_admin_entity_field_settings", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "entity_field_id", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "simple_admin_entity_field_types", force: :cascade do |t|
    t.string   "name"
    t.string   "template"
    t.boolean  "inbuilt",    default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "simple_admin_entity_fields", force: :cascade do |t|
    t.string   "name"
    t.string   "label"
    t.integer  "entity_field_type_id",                 null: false
    t.integer  "entity_id",                            null: false
    t.integer  "presentation"
    t.integer  "sort_order",           default: 0
    t.boolean  "search_indexable",     default: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
