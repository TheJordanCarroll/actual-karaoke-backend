class FavoriteSongSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :song_id, :note
    belongs_to :user
    belongs_to :song
end