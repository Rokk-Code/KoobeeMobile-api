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

ActiveRecord::Schema.define(version: 20171208221116) do

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "aboutText"
    t.string "copyText"
    t.string "thumbURL"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "cathegory"
    t.string "thumbURL"
    t.string "detailURL"
    t.string "twitterURL"
    t.string "fbURL"
    t.string "hpURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
