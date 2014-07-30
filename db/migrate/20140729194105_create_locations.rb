class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string  :name 
      t.float   :latitude
      t.float   :longitude 
      t.integer :day_id

      t.timestamps
    end
  end
end
