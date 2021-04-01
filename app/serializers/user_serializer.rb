class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :username, :password 
    # has_many :favorite_songs
    # has_many :songs, through: :favorite_songs
end