class PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players).to_serialized_json
    end

    def show
        player = Player.find(params[:id])
        render json: PlayerSerializer.new(player).to_serialized_json
    end

    def get
        player = Player.find_by(name: params[:name])
        render json: PlayerSerializer.new(player).to_serialized_json
    end

end