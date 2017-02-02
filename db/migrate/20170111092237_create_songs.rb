class CreateSongs < ActiveRecord::Migration

  def up
    create_table :songs do |t|
      t.integer "tape_id"
      t.string "title"
      t.string "artist"
      t.integer "duration"
      t.string "album"
      t.integer "year"
      t.timestamps null: false
    end
  end

  def down
    drop_table :songs
  end
end
