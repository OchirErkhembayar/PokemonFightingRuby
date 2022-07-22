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

ActiveRecord::Schema.define(version: 2022_07_22_135621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battlemons", force: :cascade do |t|
    t.bigint "battle_id", null: false
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "health"
    t.integer "damage"
    t.index ["battle_id"], name: "index_battlemons_on_battle_id"
    t.index ["pokemon_id"], name: "index_battlemons_on_pokemon_id"
  end

  create_table "battles", force: :cascade do |t|
    t.integer "turn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "damage"
    t.integer "health"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  add_foreign_key "battlemons", "battles"
  add_foreign_key "battlemons", "pokemons"
end
