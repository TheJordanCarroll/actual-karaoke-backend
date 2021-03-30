class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
      t.string :artist_gender
      t.integer :lowest_pitch
      t.integer :highest_pitch
      t.string :lowest_note
      t.string :highest_note
      t.integer :genre_id
      t.integer :year
      t.string :tempo
      t.string :mood
      t.string :key
      t.string :image
      t.string :rap_sing
      t.integer :range
      t.integer :hit_year
      t.boolean :favorited

      t.timestamps
    end
  end
end
