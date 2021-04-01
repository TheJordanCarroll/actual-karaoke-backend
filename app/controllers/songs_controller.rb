class SongsController < ApplicationController
    def index
      songs=Song.all
      render json: songs
      # paginated_songs = paginate songs, per_page: 4
      # render json: { songs: paginated_songs }
    end

    def search
      songs=Song.all
      # byebug
      if params[:genre] && params[:genre] != "All"
      songs=songs.select{|song| song.genre.name==params[:genre]}
      end
      if params[:lowpitch]
        songs=songs.select{|song| !song.lowest_pitch ? true : song.lowest_pitch>=params[:lowpitch].to_i}
      end
      paginated_songs = paginate songs, per_page: 4
      render json: { songs: paginated_songs.map{|song| SongSerializer.new(song)}, meta_data: pagination_meta_data(paginated_songs)}
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
      # byebug
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
        params.permit(:id, :name, :artist_id, :artist_gender, :lowest_pitch, :highest_pitch, :lowest_note, :highest_note, :genre_id, :year, :tempo, :mood, :key, :image, :rap_sing, :range, :hit_year, :favorited)
    end

    def pagination_meta_data(results)
        { current_page: results.current_page,
          next_page: results.next_page,
          previous_page: results.prev_page,
          total_pages: results.total_pages,
          total_count: results.total_count
      }
    end
end