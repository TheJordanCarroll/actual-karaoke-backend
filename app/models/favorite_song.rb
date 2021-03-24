class FavoriteSong < ApplicationRecord
    belongs_to :user
    belongs_to :song
    # validates_uniqueness_of :song, scope: :user
    # validates :user_id, uniqueness: true
end
