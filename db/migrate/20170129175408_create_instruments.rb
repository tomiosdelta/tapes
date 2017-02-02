class CreateInstruments < ActiveRecord::Migration
  def up
    create_table :instruments do |t|
      t.string "song_id"
      t.string "name"
      t.string "manufacturer"
      t.string "material"
      t.string "origin_country"
      t.integer "quality"

      t.timestamps null: false
    end
  end

  def down
    drop_table :instruments
  end
end
