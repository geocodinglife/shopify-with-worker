class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :duration_ms, default: 0
      t.boolean :explicit, default: false
      t.string :preview_url
      t.string :spotify_id
      t.string :spotify_url
      t.references :album, foreign_key: true
      
      t.timestamps
    end
  end
end
