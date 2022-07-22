class BattleController < ApplicationController
  def show
    @battle = Battle.find(params[:id])
    @battlemons = Battlemon.where('battle_id = ?', params[:id])
    @pokemon_one = @battlemons[0].pokemon
    @pokemon_two = @battlemons[1].pokemon
  end

  def create
    @battle = Battle.create
    Battlemon.create(
      pokemon_id: params[:pokemon_one],
      battle_id: @battle.id,
      damage: Pokemon.find(params[:pokemon_one]).damage,
      health: Pokemon.find(params[:pokemon_one]).health
    )
    Battlemon.create(
      pokemon_id: params[:pokemon_two],
      battle_id: @battle.id,
      damage: Pokemon.find(params[:pokemon_two]).damage,
      health: Pokemon.find(params[:pokemon_two]).health
    )
    redirect_to battle_path(@battle)
  end
end
