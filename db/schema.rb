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

ActiveRecord::Schema.define(version: 20140401171524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "comments", ["listing_id"], name: "index_comments_on_listing_id", using: :btree

  create_table "listings", force: true do |t|
    t.string   "card"
    t.string   "edition"
    t.string   "card_type"
    t.integer  "price"
    t.text     "description"
    t.text     "image_front"
    t.text     "image_back"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status",      default: true
    t.integer  "user_id"
    t.integer  "condition"
    t.integer  "buyer"
  end

  create_table "polls", force: true do |t|
    t.integer  "user_id"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "response"
  end

  create_table "purchases", force: true do |t|
    t.integer  "listing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "status",        default: false
    t.text     "body"
    t.boolean  "buyer_status",  default: false
    t.boolean  "seller_status", default: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.integer  "purchase_id"
  end

end
