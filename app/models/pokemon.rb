class Pokemon < ApplicationRecord
  # Assign an API key on create
  before_create do |pokemon|
    pokemon.api_key = pokemon.generate_api_key
  end

  # Generate a unique API key
  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless Pokemon.exists?(api_key: token)
    end
  end
end
