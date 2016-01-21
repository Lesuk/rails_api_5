class AddApiKeyToPokemons < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :api_key, :string
  end
end
