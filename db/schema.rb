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

ActiveRecord::Schema.define(version: 2021_05_15_052021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comment_categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "comment_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_category_id"], name: "index_comments_on_comment_category_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.text "description"
    t.integer "complexity"
    t.integer "duration"
    t.integer "devs"
    t.string "my_role"
    t.string "link"
    t.string "git_repo"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["client_id"], name: "index_projects_on_client_id"
    t.index ["slug"], name: "index_projects_on_slug", unique: true
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_taggings_on_project_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.integer "order"
    t.integer "strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
