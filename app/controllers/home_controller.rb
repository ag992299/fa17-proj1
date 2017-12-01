class HomeController < ApplicationController

  def index
    trainerless_pokemon = Pokemon.where(trainer: nil)
    @pokemon = trainerless_pokemon.sample
    puts "**"
    puts @pokemon
    puts "**"
  end

end
