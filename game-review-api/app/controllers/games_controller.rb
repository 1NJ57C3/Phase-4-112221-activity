class GamesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with :render_invalid

    def create
        game = Game.create!(game_params)
        # game.valid? ? render json: game, status: :created : render {errors: invalid.record.errors.full_messages}
    end

    def index
        render json: Game.all
    end 

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def render_invalid invalid
        render json: {errors: invalid.record.errors.full_messages}, status: unprocessable_entity
    end

    private

    def game_params
        params.permit()
    end
end
