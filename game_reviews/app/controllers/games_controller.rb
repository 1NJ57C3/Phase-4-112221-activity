class GamesController < ApplicationController
    def index
        render json: Game.all, include: [:reviews]
    end
end
