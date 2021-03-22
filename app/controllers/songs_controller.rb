class SongsController < ApplicationController
    def index
      songs=Song.all
      render json: songs
    end
  
    def new
    end
  
    def create
      song = Song.create(song_params)
      render json: song
    end
  
    def show
      song = Song.find(params[:id])
      render json: song
    end
  
    def edit
    end
  
    def update
      song = Song.find(params[:id])
      song.update(song_params)
      render json: song
    end
  
    def destroy
      song = Song.find(params[:id])
      song.destroy
      render json: song
    end
  
    private
    def song_params
        params.permit(:id, :name, :artist_id, :artist_gender, :lowest_pitch, :highest_pitch, :lowest_note, :highest_note, :genre_id, :year, :tempo, :mood, :key, :image, :rap_sing, :range, :hit_year)
    end
end