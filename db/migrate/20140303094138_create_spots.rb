class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :description
      t.string :location_type

      t.timestamps
    end
  end
end
