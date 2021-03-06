module Api::V1
  class PokemonsController < ApiController

    # GET /v1/pokemons
    def index
      render json: Pokemon.all
    end

  end
end

# class PokemonsController < ApplicationController
#   before_action :set_pokemon, only: [:show, :update, :destroy]

#   # GET /pokemons
#   # GET /pokemons.json
#   def index
#     @pokemons = Pokemon.all
#   end

#   # GET /pokemons/1
#   # GET /pokemons/1.json
#   def show
#   end

#   # POST /pokemons
#   # POST /pokemons.json
#   def create
#     @pokemon = Pokemon.new(pokemon_params)

#     if @pokemon.save
#       render :show, status: :created, location: @pokemon
#     else
#       render json: @pokemon.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /pokemons/1
#   # PATCH/PUT /pokemons/1.json
#   def update
#     if @pokemon.update(pokemon_params)
#       render :show, status: :ok, location: @pokemon
#     else
#       render json: @pokemon.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /pokemons/1
#   # DELETE /pokemons/1.json
#   def destroy
#     @pokemon.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_pokemon
#       @pokemon = Pokemon.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def pokemon_params
#       params.require(:pokemon).permit(:name, :email)
#     end
# end
