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

ActiveRecord::Schema.define(version: 2021_03_14_223617) do

  create_table "bebida_alcoolicas", force: :cascade do |t|
    t.string "codigo_de_barras"
    t.string "nome"
    t.decimal "valor"
    t.integer "quantidade_estoque"
    t.string "identidade_cliente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bebida_nao_alcoolicas", force: :cascade do |t|
    t.string "codigo_de_barras"
    t.string "nome"
    t.decimal "valor"
    t.integer "quantidade_estoque"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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
    t.string "cnpj"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "cargo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "gerente_id"
    t.index ["gerente_id"], name: "index_funcionarios_on_gerente_id"
  end

  create_table "pedido_clientes", force: :cascade do |t|
    t.integer "funcionario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_pedido_clientes_on_funcionario_id"
  end

  create_table "pedido_fornecedors", force: :cascade do |t|
    t.integer "funcionario_id"
    t.integer "fornecedor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fornecedor_id"], name: "index_pedido_fornecedors_on_fornecedor_id"
    t.index ["funcionario_id"], name: "index_pedido_fornecedors_on_funcionario_id"
  end

  create_table "pedido_produtos", force: :cascade do |t|
    t.integer "quantidade"
    t.integer "pedido_cliente_id"
    t.integer "pedido_fornecedor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "bebida_alcoolica_id"
    t.integer "bebida_nao_alcoolica_id"
    t.index ["bebida_alcoolica_id"], name: "index_pedido_produtos_on_bebida_alcoolica_id"
    t.index ["bebida_nao_alcoolica_id"], name: "index_pedido_produtos_on_bebida_nao_alcoolica_id"
    t.index ["pedido_cliente_id"], name: "index_pedido_produtos_on_pedido_cliente_id"
    t.index ["pedido_fornecedor_id"], name: "index_pedido_produtos_on_pedido_fornecedor_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.integer "numero"
    t.integer "funcionario_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["funcionario_id"], name: "index_telefones_on_funcionario_id"
  end

end
