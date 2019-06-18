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

ActiveRecord::Schema.define(version: 20190617235355) do

  create_table "cart_items", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "product_id"
    t.integer "quantity", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "party_a"
    t.string "party_b"
    t.integer "amount"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "friendly_id"
    t.integer "user_id"
    t.string "status", default: "draft"
    t.integer "category_id"
    t.integer "row_order"
    t.index ["category_id"], name: "index_contracts_on_category_id"
    t.index ["friendly_id"], name: "index_contracts_on_friendly_id", unique: true
    t.index ["row_order"], name: "index_contracts_on_row_order"
  end

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "wage_upper_bound"
    t.integer "wage_lower_bound"
    t.string "contact_email"
    t.boolean "is_hidden", default: true
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_memberships_on_group_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total", default: 0
    t.integer "user_id"
    t.string "billing_name"
    t.string "billing_address"
    t.string "shipping_name"
    t.string "shipping_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.integer "group_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_lists", force: :cascade do |t|
    t.integer "order_id"
    t.string "product_name"
    t.integer "product_price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "quantity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "code"
    t.integer "category_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "legal_name"
    t.date "birthday"
    t.string "location"
    t.string "education"
    t.string "occupation"
    t.text "bio"
    t.text "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "status", default: "draft"
  end

  create_table "resumes", force: :cascade do |t|
    t.integer "job_id"
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attachment"
  end

  create_table "subprojects", force: :cascade do |t|
    t.string "title"
    t.integer "project_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false
    t.string "time_zone"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
