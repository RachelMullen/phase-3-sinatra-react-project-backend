class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :description

      t.timestamps
    end
  end
end
