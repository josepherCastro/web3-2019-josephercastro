# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_18_195657) do

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.float "balance"
    t.integer "bar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_customers_on_bar_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "bar_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_employees_on_bar_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "entries", force: :cascade do |t|
    t.date "done_at"
    t.float "value"
    t.integer "customer_id", null: false
    t.integer "purchase_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_entries_on_customer_id"
    t.index ["purchase_id"], name: "index_entries_on_purchase_id"
  end

  create_table "items", force: :cascade do |t|
    t.float "price"
    t.float "ammount"
    t.integer "product_id", null: false
    t.integer "purchase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_items_on_product_id"
    t.index ["purchase_id"], name: "index_items_on_purchase_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.integer "bar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_products_on_bar_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.date "bought_at"
    t.integer "employee_id", null: false
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["employee_id"], name: "index_purchases_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "customers", "bars"
  add_foreign_key "employees", "bars"
  add_foreign_key "employees", "users"
  add_foreign_key "entries", "customers"
  add_foreign_key "entries", "purchases"
  add_foreign_key "items", "products"
  add_foreign_key "items", "purchases"
  add_foreign_key "products", "bars"
  add_foreign_key "purchases", "customers"
  add_foreign_key "purchases", "employees"
end
