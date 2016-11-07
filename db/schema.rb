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

ActiveRecord::Schema.define(version: 20161107214620) do

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
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug"
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.index ["musician_id"], name: "index_bands_on_musician_id", using: :btree
    t.index ["slug"], name: "index_bands_on_slug", unique: true, using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
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
    t.string   "slug"
    t.index ["slug"], name: "index_instruments_on_slug", unique: true, using: :btree
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
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.string   "slug"
    t.index ["slug"], name: "index_musicians_on_slug", unique: true, using: :btree
  end

  add_foreign_key "band_instrument_musicians", "bands"
  add_foreign_key "band_instrument_musicians", "instruments"
  add_foreign_key "band_instrument_musicians", "musicians"
  add_foreign_key "bands", "musicians"
  add_foreign_key "instrument_musicians", "instruments"
  add_foreign_key "instrument_musicians", "musicians"
end
