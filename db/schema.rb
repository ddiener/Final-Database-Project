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

ActiveRecord::Schema.define(version: 20151202094958) do

  create_table "albums", primary_key: "albumId", force: :cascade do |t|
    t.integer  "artistId",               limit: 4,   null: false
    t.string   "albumName",              limit: 128, null: false
    t.integer  "releaseDate",            limit: 4,   null: false
    t.integer  "genreId",                limit: 4,   null: false
    t.integer  "labelId",                limit: 4,   null: false
    t.string   "album_img_file_name",    limit: 255
    t.string   "album_img_content_type", limit: 255
    t.integer  "album_img_file_size",    limit: 4
    t.datetime "album_img_updated_at"
  end

  add_index "albums", ["artistId"], name: "artist_id", using: :btree
  add_index "albums", ["genreId"], name: "genre_id", using: :btree
  add_index "albums", ["labelId"], name: "label_id", using: :btree

  create_table "artists", primary_key: "artistId", force: :cascade do |t|
    t.string   "artistName",              limit: 128, null: false
    t.integer  "beginDate",               limit: 4,   null: false
    t.string   "artist_img_file_name",    limit: 255
    t.string   "artist_img_content_type", limit: 255
    t.integer  "artist_img_file_size",    limit: 4
    t.datetime "artist_img_updated_at"
  end

  create_table "genres", primary_key: "genreId", force: :cascade do |t|
    t.string "genreName",   limit: 128, null: false
    t.string "description", limit: 512, null: false
  end

  create_table "labels", primary_key: "labelId", force: :cascade do |t|
    t.string "labelName", limit: 128, null: false
    t.string "city",      limit: 128, null: false
    t.string "founder",   limit: 128, null: false
  end

  create_table "musicians", force: :cascade do |t|
    t.string   "name",                      limit: 255
    t.string   "city",                      limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "musician_img_file_name",    limit: 255
    t.string   "musician_img_content_type", limit: 255
    t.integer  "musician_img_file_size",    limit: 4
    t.datetime "musician_img_updated_at"
    t.integer  "founded",                   limit: 4
  end

  create_table "tracks", id: false, force: :cascade do |t|
    t.integer "albumId",   limit: 4,   null: false
    t.string  "trackName", limit: 128, null: false
    t.string  "length",    limit: 64,  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 50, null: false
    t.string   "password",   limit: 30, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
