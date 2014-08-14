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

ActiveRecord::Schema.define(version: 20140814042324) do

  create_table "articles", force: true do |t|
    t.text     "english"
    t.text     "phonetic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "picture"
    t.integer  "language_id"
  end

  add_index "articles", ["language_id"], name: "index_articles_on_language_id"

  create_table "contributors", force: true do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contributors", ["site_id"], name: "index_contributors_on_site_id"

  create_table "installations", force: true do |t|
    t.string   "installation"
    t.string   "email"
    t.text     "address"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "name"
    t.integer  "installation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["installation_id"], name: "index_sites_on_installation_id"

  create_table "users", force: true do |t|
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "location"
    t.string   "contact"
    t.string   "gender"
    t.string   "role"
    t.string   "login_approval"
    t.string   "lang"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "volunteers", force: true do |t|
    t.string   "vname"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "volunteers", ["site_id"], name: "index_volunteers_on_site_id"

end
