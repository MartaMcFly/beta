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

ActiveRecord::Schema.define(version: 2018_06_13_102220) do

  create_table "assos", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.integer "code_postal"
    t.string "domaine"
    t.string "public"
    t.string "description"
    t.index ["email"], name: "index_assos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_assos_on_reset_password_token", unique: true
  end

  create_table "benevoles", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "prenom"
    t.integer "age"
    t.string "competences"
    t.string "adresse"
    t.integer "telephone"
    t.string "presentation"
    t.index ["email"], name: "index_benevoles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_benevoles_on_reset_password_token", unique: true
  end

  create_table "benevoles_missions", id: false, force: :cascade do |t|
    t.integer "benevole_id", null: false
    t.integer "mission_id", null: false
    t.index ["benevole_id"], name: "index_benevoles_missions_on_benevole_id"
    t.index ["mission_id"], name: "index_benevoles_missions_on_mission_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "nom"
    t.datetime "date_debut"
    t.datetime "date_fin"
    t.string "lieu"
    t.string "descriptif"
    t.string "objectifs"
    t.string "competences"
    t.integer "asso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asso_id"], name: "index_missions_on_asso_id"
  end

end
