class PokemonController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def create
    Pokemon.create(
      name: params[:name],
      damage: params[:damage],
      health: params[:health]
    )
    redirect_to pokemon_index_path
  end

  def update
    pokemon = Pokemon.find(params[:id])
    pokemon.name = params[:name] if params[:name] != ''
    pokemon.damage = params[:damage] if params[:damage] != ''
    pokemon.health = params[:health] if params[:health] != ''
    pokemon.save
    redirect_to pokemon_path(pokemon)
  end
end
