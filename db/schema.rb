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


ActiveRecord::Schema.define(version: 2019_09_12_142011) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chats", force: :cascade do |t|
    t.bigint "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_chat_id"
    t.index ["curso_id"], name: "index_chats_on_curso_id"
    t.index ["user_chat_id"], name: "index_chats_on_user_chat_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ocde_geral"
    t.string "photo"
  end

  create_table "faculdades", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sigla"
    t.float "latitude"
    t.float "longitude"
    t.integer "ranking"
    t.float "nota"
    t.string "photo"
    t.string "phone"
    t.string "site"
    t.string "email"
    t.string "tipo"
    t.string "enem"
    t.string "cotas"
    t.string "prouni"
    t.string "fies"
    t.string "Nalunos"
    t.string "Ncursos"
    t.integer "ano"
    t.string "cidades"
    t.float "relacao"
    t.string "ideia"
    t.string "intro"
    t.string "historia"
    t.string "geral"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "following_id", null: false
    t.integer "follower_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id"
    t.index ["following_id", "follower_id"], name: "index_follows_on_following_id_and_follower_id", unique: true
    t.index ["following_id"], name: "index_follows_on_following_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_chat_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_chat_id"], name: "index_messages_on_user_chat_id"
  end

  create_table "opcaos", force: :cascade do |t|
    t.bigint "faculdade_id"
    t.bigint "curso_id"
    t.string "data_inscricao"
    t.string "data_prova"
    t.integer "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "grau"
    t.string "modalidade"
    t.string "ano_criacao"
    t.integer "cc"
    t.integer "vagas"
    t.integer "enade"
    t.string "ocde_curso"
    t.string "photo"
    t.index ["curso_id"], name: "index_opcaos_on_curso_id"
    t.index ["faculdade_id"], name: "index_opcaos_on_faculdade_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.bigint "faculdade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["faculdade_id"], name: "index_reviews_on_faculdade_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "user_chats", force: :cascade do |t|
    t.bigint "chat_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_id"], name: "index_user_chats_on_chat_id"
    t.index ["user_id"], name: "index_user_chats_on_user_id"
  end

  create_table "user_opcaos", force: :cascade do |t|
    t.bigint "opcao_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opcao_id"], name: "index_user_opcaos_on_opcao_id"
    t.index ["user_id"], name: "index_user_opcaos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "address"
    t.string "phone_number"
    t.integer "age"
    t.string "college"
    t.text "infos"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chats", "cursos"
  add_foreign_key "chats", "user_chats"
  add_foreign_key "messages", "user_chats"
  add_foreign_key "opcaos", "cursos"
  add_foreign_key "opcaos", "faculdades"
  add_foreign_key "reviews", "faculdades"
  add_foreign_key "reviews", "users"
  add_foreign_key "user_chats", "chats"
  add_foreign_key "user_chats", "users"
  add_foreign_key "user_opcaos", "opcaos"
  add_foreign_key "user_opcaos", "users"
end
