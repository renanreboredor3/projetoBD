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

ActiveRecord::Schema.define(version: 20160707163528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atividade", primary_key: "id_atividade", force: :cascade do |t|
    t.string "nome_atividade", limit: 40, null: false
  end

  create_table "classificacao", id: false, force: :cascade do |t|
    t.integer "id_participante", null: false
    t.integer "id_prova",        null: false
    t.integer "fk_jogos"
  end

  create_table "competitorevents", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "competitor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "competitorevents", ["competitor_id"], name: "index_competitorevents_on_competitor_id", using: :btree
  add_index "competitorevents", ["event_id"], name: "index_competitorevents_on_event_id", using: :btree

  create_table "competitorgames", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "competitor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "competitorgames", ["competitor_id"], name: "index_competitorgames_on_competitor_id", using: :btree
  add_index "competitorgames", ["game_id"], name: "index_competitorgames_on_game_id", using: :btree

  create_table "competitors", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "federation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "competitors", ["federation_id"], name: "index_competitors_on_federation_id", using: :btree

  create_table "delegacao_medica", id: false, force: :cascade do |t|
    t.integer "id_medico",    null: false
    t.integer "id_federacao", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "modality_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["modality_id"], name: "index_events_on_modality_id", using: :btree

  create_table "fase", primary_key: "id_fase", force: :cascade do |t|
    t.string  "nome_fase", limit: 50
    t.date    "data_fase"
    t.integer "fk_prova"
  end

  create_table "federacao", primary_key: "id_federacao", force: :cascade do |t|
    t.string  "nome_federacao",         limit: 50, null: false
    t.string  "bandeira_nome",          limit: 50, null: false
    t.string  "bandeira_nome_conteudo", limit: 50, null: false
    t.integer "bandeira_tamanho"
  end

  create_table "federations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "flag_file_name"
    t.string   "flag_content_type"
    t.integer  "flag_file_size"
    t.datetime "flag_updated_at"
  end

  create_table "gamefederations", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "federation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "gamefederations", ["federation_id"], name: "index_gamefederations_on_federation_id", using: :btree
  add_index "gamefederations", ["game_id"], name: "index_gamefederations_on_game_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "healthcaresupports", force: :cascade do |t|
    t.integer  "medic_id"
    t.integer  "federation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "healthcaresupports", ["federation_id"], name: "index_healthcaresupports_on_federation_id", using: :btree
  add_index "healthcaresupports", ["medic_id"], name: "index_healthcaresupports_on_medic_id", using: :btree

  create_table "jogos", primary_key: "id_jogos", force: :cascade do |t|
    t.string "nome_jogos", limit: 50, null: false
    t.string "cidade",     limit: 50, null: false
    t.string "pais",       limit: 50, null: false
  end

  create_table "jogos_federacao", id: false, force: :cascade do |t|
    t.integer "id_jogos",     null: false
    t.integer "id_federacao", null: false
  end

  create_table "medico", primary_key: "id_medico", force: :cascade do |t|
    t.string  "nome_medico",  limit: 50
    t.integer "fk_federacao"
  end

  create_table "medics", force: :cascade do |t|
    t.string   "name"
    t.integer  "federation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "medics", ["federation_id"], name: "index_medics_on_federation_id", using: :btree

  create_table "modalidade", primary_key: "id_modalidade", force: :cascade do |t|
    t.string  "nome_modalidade", limit: 40, null: false
    t.integer "fk_atividade"
  end

  create_table "modalities", force: :cascade do |t|
    t.string   "name"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "modalities", ["activity_id"], name: "index_modalities_on_activity_id", using: :btree

  create_table "participante", primary_key: "id_participante", force: :cascade do |t|
    t.string  "nome_participante", limit: 40, null: false
    t.integer "fk_federacao"
  end

  create_table "participante_jogos", id: false, force: :cascade do |t|
    t.integer "id_jogos",        null: false
    t.integer "id_participante", null: false
  end

  create_table "participante_prova", id: false, force: :cascade do |t|
    t.integer "id_prova",        null: false
    t.integer "id_participante", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.string   "name"
    t.datetime "phase_date"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "phases", ["event_id"], name: "index_phases_on_event_id", using: :btree

  create_table "prova", primary_key: "id_prova", force: :cascade do |t|
    t.string  "nome_prova",    limit: 40, null: false
    t.integer "fk_modalidade"
  end

  create_table "regras", primary_key: "id_regras", force: :cascade do |t|
    t.string  "nome_regras", limit: 50
    t.integer "fk_prova"
  end

  create_table "resultado", primary_key: "id_resultado", force: :cascade do |t|
    t.integer "fk_participante"
    t.integer "fk_prova"
    t.time    "tempo"
    t.integer "distancia"
    t.integer "altura"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "competitor_id"
    t.datetime "time"
    t.integer  "distance"
    t.integer  "height"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "results", ["competitor_id"], name: "index_results_on_competitor_id", using: :btree
  add_index "results", ["event_id"], name: "index_results_on_event_id", using: :btree

  create_table "rules", force: :cascade do |t|
    t.string   "name"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rules", ["event_id"], name: "index_rules_on_event_id", using: :btree

  add_foreign_key "classificacao", "jogos", column: "fk_jogos", primary_key: "id_jogos", name: "classificacao_fk_jogos_fkey"
  add_foreign_key "classificacao", "participante", column: "id_participante", primary_key: "id_participante", name: "classificacao_id_participante_fkey", on_update: :cascade
  add_foreign_key "classificacao", "prova", column: "id_prova", primary_key: "id_prova", name: "classificacao_id_prova_fkey", on_update: :cascade
  add_foreign_key "competitorevents", "competitors"
  add_foreign_key "competitorevents", "events"
  add_foreign_key "competitorgames", "competitors"
  add_foreign_key "competitorgames", "games"
  add_foreign_key "competitors", "federations"
  add_foreign_key "delegacao_medica", "federacao", column: "id_federacao", primary_key: "id_federacao", name: "delegacao_medica_id_federacao_fkey", on_update: :cascade
  add_foreign_key "delegacao_medica", "medico", column: "id_medico", primary_key: "id_medico", name: "delegacao_medica_id_medico_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "events", "modalities"
  add_foreign_key "fase", "prova", column: "fk_prova", primary_key: "id_prova", name: "fase_fk_prova_fkey"
  add_foreign_key "gamefederations", "federations"
  add_foreign_key "gamefederations", "games"
  add_foreign_key "healthcaresupports", "federations"
  add_foreign_key "healthcaresupports", "medics"
  add_foreign_key "jogos_federacao", "federacao", column: "id_federacao", primary_key: "id_federacao", name: "jogos_federacao_id_federacao_fkey", on_update: :cascade
  add_foreign_key "jogos_federacao", "jogos", column: "id_jogos", primary_key: "id_jogos", name: "jogos_federacao_id_jogos_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "medico", "federacao", column: "fk_federacao", primary_key: "id_federacao", name: "medico_fk_federacao_fkey"
  add_foreign_key "medics", "federations"
  add_foreign_key "modalidade", "atividade", column: "fk_atividade", primary_key: "id_atividade", name: "modalidade_fk_atividade_fkey"
  add_foreign_key "modalities", "activities"
  add_foreign_key "participante", "federacao", column: "fk_federacao", primary_key: "id_federacao", name: "participante_fk_federacao_fkey"
  add_foreign_key "participante_jogos", "jogos", column: "id_jogos", primary_key: "id_jogos", name: "participante_jogos_id_jogos_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "participante_jogos", "participante", column: "id_participante", primary_key: "id_participante", name: "participante_jogos_id_participante_fkey", on_update: :cascade
  add_foreign_key "participante_prova", "participante", column: "id_participante", primary_key: "id_participante", name: "participante_prova_id_participante_fkey", on_update: :cascade
  add_foreign_key "participante_prova", "prova", column: "id_prova", primary_key: "id_prova", name: "participante_prova_id_prova_fkey", on_update: :cascade, on_delete: :cascade
  add_foreign_key "phases", "events"
  add_foreign_key "prova", "modalidade", column: "fk_modalidade", primary_key: "id_modalidade", name: "prova_fk_modalidade_fkey"
  add_foreign_key "regras", "prova", column: "fk_prova", primary_key: "id_prova", name: "regras_fk_prova_fkey"
  add_foreign_key "resultado", "participante", column: "fk_participante", primary_key: "id_participante", name: "resultado_fk_participante_fkey"
  add_foreign_key "resultado", "prova", column: "fk_prova", primary_key: "id_prova", name: "resultado_fk_prova_fkey"
  add_foreign_key "results", "competitors"
  add_foreign_key "results", "events"
  add_foreign_key "rules", "events"
end
