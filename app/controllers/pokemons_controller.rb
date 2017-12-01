class PokemonsController < ApplicationController

	def capture
		@pokemon_id = params[:pokemon_id]
		@curr_trainer = current_trainer
		curr_pok = Pokemon.find(@pokemon_id)
		curr_pok.trainer_id = current_trainer.id
		curr_pok.save!
		redirect_to root_path
	end 

	def index
  	@pokemons = Pokemon.all
  end

  def show
  	@pokemon = Pokemon.find(params[:id])
  end
end
