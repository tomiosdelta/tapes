class CreateTapes < ActiveRecord::Migration
  def up
    create_table :tapes do |t|
      t.string "name", :limit => 25
      t.integer "duration"
      t.string "make", :limit => 25, :default => 'Sony'
      t.string "material", :limit => 30
      t.timestamps null: false
    end
  end

  def down
    drop_table :tapes
  end
end
