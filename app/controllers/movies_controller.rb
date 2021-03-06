class MoviesController < ApplicationController

    def index
        @movies = Movie.all 
        render json: @movies
    end

    def create
        @movie = Movie.create(
            title: params[:title],
            actor_id: params[:actor_id],
            director_id: params[:director_id]
        )
        render json: @movie, include: [:director, :actor]
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(
            title: params[:title],
            actor_id: params[:actor_id],
            director_id: params[:director_id]
        )
        render json: @movie, include: [:director, :actor]
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        render json: "Movie deleted"
    end
end
