class SongSerializer < ActiveModel::Serializer
    attributes :id, :name, :artist_id, :artist_gender, :lowest_pitch, :highest_pitch, :lowest_note, :highest_note, :genre_id, :year, :tempo, :mood, :key, :image, :rap_sing, :range, :hit_year
    belongs_to :genre
    belongs_to :artist
    has_many :favorite_songs
    has_many :users, through: :favorite_songs
end