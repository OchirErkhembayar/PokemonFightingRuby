# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pikachu = Pokemon.create!(
  name: 'Pikachu',
  damage: 30,
  health: 120
)

charizard = Pokemon.create!(
  name: 'Charizard',
  damage: 35,
  health: 110
)

Pokemon.create!(
  name: 'Archer',
  damage: 40,
  health: 100
)

battle_one = Battle.create!(
)

Battlemon.create!(
  pokemon_id: pikachu.id,
  battle_id: battle_one.id
)

Battlemon.create!(
  pokemon_id: charizard.id,
  battle_id: battle_one.id
)
