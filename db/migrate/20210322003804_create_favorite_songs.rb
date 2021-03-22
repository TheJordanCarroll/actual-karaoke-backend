class CreateFavoriteSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_songs do |t|
      t.integer :user_id
      t.integer :song_id
      t.string :note
      
      t.timestamps
    end
  end
end
