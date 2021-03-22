class FavoriteSongsController < ApplicationController
    def index
      favorite_songs=FavoriteSong.all
      render json: favorite_songs
    end
  
    def new
    end
  
    def create
      favorite_song = FavoriteSong.create(favorite_song_params)
      render json: favorite_song
    end
  
    def show
      favorite_song = FavoriteSong.find(params[:id])
      render json: favorite_song
    end
  
    def edit
    end
  
    def update
      favorite_song = FavoriteSong.find(params[:id])
      favorite_song.update(favorite_song_params)
      render json: favorite_song
    end
  
    def destroy
      favorite_song = FavoriteSong.find(params[:id])
      favorite_song.destroy
      render json: favorite_song
    end
  
    private
    def favorite_song_params
        params.permit(:id, :user_id, :song_id, :note)
    end
end