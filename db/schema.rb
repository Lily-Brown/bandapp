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

ActiveRecord::Schema.define(version: 20161104203555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "band_instrument_musicians", force: :cascade do |t|
    t.integer  "musician_id"
    t.integer  "instrument_id"
    t.integer  "band_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["band_id"], name: "index_band_instrument_musicians_on_band_id", using: :btree
    t.index ["instrument_id"], name: "index_band_instrument_musicians_on_instrument_id", using: :btree
    t.index ["musician_id"], name: "index_band_instrument_musicians_on_musician_id", using: :btree
  end

  create_table "bands", force: :cascade do |t|
    t.string   "band_name"
    t.string   "genres"
    t.string   "influences"
    t.string   "bio"
    t.string   "image"
    t.string   "audio_clip"
    t.string   "practice_frequency"
    t.string   "gear"
    t.integer  "zip_code"
    t.integer  "musician_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["musician_id"], name: "index_bands_on_musician_id", using: :btree
  end

  create_table "instrument_musicians", force: :cascade do |t|
    t.integer  "instrument_id"
    t.integer  "musician_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["instrument_id"], name: "index_instrument_musicians_on_instrument_id", using: :btree
    t.index ["musician_id"], name: "index_instrument_musicians_on_musician_id", using: :btree
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "instrument_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string   "name"
    t.string   "genres"
    t.string   "influences"
    t.string   "bio"
    t.integer  "zip_code"
    t.string   "image"
    t.string   "audio_clip"
    t.string   "email"
    t.string   "password_digest"
    t.string   "practice_frequency"
    t.string   "gear"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "band_instrument_musicians", "bands"
  add_foreign_key "band_instrument_musicians", "instruments"
  add_foreign_key "band_instrument_musicians", "musicians"
  add_foreign_key "bands", "musicians"
  add_foreign_key "instrument_musicians", "instruments"
  add_foreign_key "instrument_musicians", "musicians"
end
