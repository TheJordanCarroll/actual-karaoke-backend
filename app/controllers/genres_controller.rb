class GenresController < ApplicationController
    def index
      genres=Genre.all
      render json: genres
    end
  
    def new
    end
  
    def create
      genre = Genre.create(genre_params)
      render json: genre
    end
  
    def show
      genre = Genre.find(params[:id])
      render json: genre
    end
  
    def edit
    end
  
    def update
      genre = Genre.find(params[:id])
      genre.update(genre_params)
      render json: genre
    end
  
    def destroy
      genre = Genre.find(params[:id])
      genre.destroy
      render json: genre
    end
  
    private
    def genre_params
        params.permit(:id, :name)
    end
end