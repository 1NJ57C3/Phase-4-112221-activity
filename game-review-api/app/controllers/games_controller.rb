class GamesController < ApplicationController
    def index
        render json: Game.all
    end 

    def show
        game = Game.find(params[:id])
    end 

    def destroy
        game = Game.find(params[:id])
        game.destroy
        # head :no_content
        render json: {}, status: :ok
    # rescue ActiveRecord::RecordNotFound
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { invalid.record.errors.full_messages }, status: :not_found
    end

    def update
        game = Game.find(params[:id])
        game.update!(game_params)
        render json: game, status: :ok
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
