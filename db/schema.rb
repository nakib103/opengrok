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

ActiveRecord::Schema.define(version: 2014100904214812323) do

  create_table "ROLE_DEPARTMENT", primary_key: "ID", force: true do |t|
    t.string "ROLE",       limit: 200, null: false
    t.string "DEPARTMENT", limit: 200, null: false
  end

  create_table "ROLE_ID", primary_key: "ID", force: true do |t|
    t.string "ROLE", limit: 200, null: false
  end

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
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
    t.string   "username"
  end

  add_index "admins", ["username"], name: "index_admins_on_username", unique: true, using: :btree

  create_table "projects", force: true do |t|
    t.string   "projectname", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projectusers", force: true do |t|
    t.integer  "project_id", default: 0, null: false
    t.integer  "user_id",    default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projectusers", ["project_id", "user_id"], name: "index_projectusers_on_project_id_and_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",   null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
