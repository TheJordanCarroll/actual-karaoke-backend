class SongSerializer < ActiveModel::Serializer
    attributes :id, :name, :artist, :artist_gender, :lowest_pitch, :highest_pitch, :lowest_note, :highest_note, :genre, :year, :tempo, :mood, :key, :image, :rap_sing, :range, :hit_year, :favorited
    # has_one :genre
    # has_one :artist
    # has_many :favorite_songs
    # has_many :users, through: :favorite_songs
end