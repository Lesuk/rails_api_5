json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :email
  json.url pokemon_url(pokemon, format: :json)
end
