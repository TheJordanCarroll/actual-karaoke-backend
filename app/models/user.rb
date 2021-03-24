class User < ApplicationRecord
    has_many :favorite_songs
    has_many :songs, through: :favorite_songs
    # validates_uniqueness_of :favorite_song, scope: :user
    # validates :favorite_song, uniqueness: true
    # validates :songs, uniqueness: { scope: :user }
end
