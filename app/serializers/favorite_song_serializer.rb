class FavoriteSongSerializer < ActiveModel::Serializer
    attributes :id, :user, :song, :note
    # belongs_to :user
    # belongs_to :song
    # has_one :user
    # has_one :song
end