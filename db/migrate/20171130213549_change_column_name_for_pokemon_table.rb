class ChangeColumnNameForPokemonTable < ActiveRecord::Migration[5.1]
  def change
  	rename_column :pokemons, :rainer_id, :trainer_id
  end
end
