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

ActiveRecord::Schema.define(version: 20150825213623) do

  create_table "rafts", force: :cascade do |t|
    t.string   "x_coord"
    t.string   "y_coord"
    t.string   "river"
    t.string   "catchment"
    t.date     "start_date"
    t.string   "raft_code"
    t.string   "raft_or_tunnel"
    t.date     "status_change_date"
    t.string   "raft_status"
    t.string   "contact_code"
    t.string   "coordinating_org"
    t.string   "landowner_contact_code"
    t.string   "dispatcher_contact_code"
    t.text     "access_notes"
    t.text     "comments"
    t.string   "created_by"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
  end

  add_index "rafts", ["user_id"], name: "index_rafts_on_user_id"

  create_table "scientists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_sightings", force: :cascade do |t|
    t.string   "x_coord"
    t.string   "y_coord"
    t.string   "date"
    t.string   "your_name"
    t.string   "contact_info"
    t.string   "catchment"
    t.string   "river"
    t.string   "no_of_minks"
    t.string   "status"
    t.string   "comments"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tsightings", force: :cascade do |t|
    t.string   "x_coord"
    t.string   "y_coord"
    t.string   "date"
    t.string   "your_name"
    t.string   "contact_info"
    t.string   "catchment"
    t.string   "river"
    t.string   "no_of_mink"
    t.string   "status"
    t.string   "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "contact_code"
    t.string   "reported_by"
    t.string   "reported_to"
    t.string   "follow_up"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fishery_trust_name"
    t.string   "contact_code"
    t.string   "organisation"
    t.string   "role_in_org"
    t.string   "phone_landline"
    t.string   "phone_mobile"
    t.string   "street_address"
    t.string   "postcode"
    t.string   "city"
    t.string   "forms_signed"
    t.boolean  "report_sightings"
    t.boolean  "monitor"
    t.boolean  "trapper"
    t.boolean  "dispatcher"
    t.boolean  "landowner"
    t.boolean  "peer"
    t.integer  "num_of_rafts_given"
    t.integer  "num_of_traps_given"
    t.boolean  "own_traps"
    t.string   "coordinating_org"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "newsletter"
    t.boolean  "own_carcass_storage"
    t.string   "how_heard_of_smi"
    t.text     "comments"
    t.string   "estate_name"
    t.text     "land_access_notes"
    t.boolean  "access_granted"
    t.date     "date_access_granted"
    t.date     "end_date_access"
    t.boolean  "share_data"
    t.string   "trap_codes"
    t.boolean  "receives_newsletter_only"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
