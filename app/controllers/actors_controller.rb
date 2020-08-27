class ActorsController < ApplicationController

    def index
        @actors = Actor.all 
        render json: @actors, include: [:directors, :movies]
    end

    def show
        @actor = Actor.find(params[:id])
        render json: @actor, include: [:directors, :movies]
    end

end


