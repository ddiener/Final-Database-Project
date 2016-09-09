class CreateMigration < ActiveRecord::Migration
	def self.up

ActiveRecord::Schema.define(version: 20151201212208) do

  create_table "albums", primary_key: "albumId", force: :cascade do |t|
    t.integer "artistId",    limit: 4,   null: false
    t.string  "albumName",   limit: 128, null: false
    t.integer "releaseDate", limit: 4,   null: false
    t.integer "genreId",     limit: 4,   null: false
    t.integer "labelId",     limit: 4,   null: false
  end

  add_index "albums", ["artistId"], name: "artist_id", using: :btree
  add_index "albums", ["genreId"], name: "genre_id", using: :btree
  add_index "albums", ["labelId"], name: "label_id", using: :btree

  create_table "artists", primary_key: "artistId", force: :cascade do |t|
    t.string  "artistName", limit: 128, null: false
    t.integer "beginDate",  limit: 4,   null: false
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

def self.down
end
end