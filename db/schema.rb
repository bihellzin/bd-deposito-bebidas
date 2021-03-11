# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_11_122621) do

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.integer "numero"
    t.string "complemento"
    t.integer "funcionario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_enderecos_on_funcionario_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.integer "cnpj"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "cpf"
    t.string "nome"
    t.string "cargo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "telefones", force: :cascade do |t|
    t.integer "numero"
    t.integer "funcionario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_telefones_on_funcionario_id"
  end

end
