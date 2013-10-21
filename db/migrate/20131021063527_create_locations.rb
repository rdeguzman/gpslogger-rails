class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :gps_timestamp, :limit => 8, :default => 0, :null => false
      t.float :latitude, :default => 0.0, :null => false
      t.float :longitude, :default => 0.0, :null => false
      t.float :speed
      t.float :heading

      t.timestamps
    end
  end
end
