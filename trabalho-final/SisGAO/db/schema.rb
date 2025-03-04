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

ActiveRecord::Schema.define(version: 2019_11_28_145658) do

  create_table "devolucaos", force: :cascade do |t|
    t.float "quantidade"
    t.integer "Retirada_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Retirada_id"], name: "index_devolucaos_on_Retirada_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.integer "cnpj"
    t.string "nome"
    t.string "telefone"
    t.string "endereco"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "matricula"
    t.string "nome"
    t.string "setor"
    t.integer "cargo"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_funcionarios_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "nome"
    t.float "quantidadeMinima"
    t.float "quantidade"
    t.boolean "devolutivo"
    t.integer "UnidadeMedida_id", null: false
    t.integer "Fornecedor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Fornecedor_id"], name: "index_materials_on_Fornecedor_id"
    t.index ["UnidadeMedida_id"], name: "index_materials_on_UnidadeMedida_id"
  end

  create_table "retiradas", force: :cascade do |t|
    t.float "quantidade"
    t.integer "Material_id", null: false
    t.integer "Funcionario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Funcionario_id"], name: "index_retiradas_on_Funcionario_id"
    t.index ["Material_id"], name: "index_retiradas_on_Material_id"
  end

  create_table "unidade_medidas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "devolucaos", "Retiradas"
  add_foreign_key "funcionarios", "users"
  add_foreign_key "materials", "Fornecedors"
  add_foreign_key "materials", "UnidadeMedidas"
  add_foreign_key "retiradas", "Funcionarios"
  add_foreign_key "retiradas", "Materials"
end
