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

ActiveRecord::Schema.define(version: 20171004165444) do

  create_table "atendentes", force: :cascade do |t|
    t.string   "nome"
    t.integer  "cargo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "atendentes", ["cargo_id"], name: "index_atendentes_on_cargo_id"

  create_table "cargos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cidades", ["estado_id"], name: "index_cidades_on_estado_id"

  create_table "consulta", force: :cascade do |t|
    t.datetime "data_hora"
    t.boolean  "efetuado"
    t.float    "valor"
    t.boolean  "pagamento"
    t.integer  "pessoa_id"
    t.integer  "convenio_id"
    t.integer  "atendente_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "consulta", ["atendente_id"], name: "index_consulta_on_atendente_id"
  add_index "consulta", ["convenio_id"], name: "index_consulta_on_convenio_id"
  add_index "consulta", ["pessoa_id"], name: "index_consulta_on_pessoa_id"

  create_table "convenios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.string   "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string   "nome"
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.integer  "telefone",   limit: 8
    t.string   "email"
    t.string   "endereco"
    t.integer  "numero"
    t.string   "bairro"
    t.integer  "cep"
    t.integer  "cidade_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pessoas", ["cidade_id"], name: "index_pessoas_on_cidade_id"

end
