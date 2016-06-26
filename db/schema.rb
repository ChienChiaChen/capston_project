# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160621030045) do

  create_table "anp_supers", force: :cascade do |t|
    t.string   "tt"
    t.string   "ttt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anps", force: :cascade do |t|
    t.text     "super"
    t.text     "sub"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.string   "manager_name"
    t.date     "identify_date"
    t.integer  "scope"
    t.integer  "time"
    t.integer  "cost"
    t.integer  "member"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "outsource"
    t.integer  "experience"
    t.integer  "product_type"
    t.integer  "req_stability"
    t.integer  "req_clear"
    t.integer  "project_type"
    t.integer  "development_process"
    t.integer  "collaboratingdevelopment"
    t.integer  "user_involvement"
    t.integer  "supplier_support"
    t.integer  "manager_support"
  end

end
