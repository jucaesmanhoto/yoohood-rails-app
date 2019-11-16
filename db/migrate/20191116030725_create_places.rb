class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :place_name
      t.decimal :latitude
      t.decimal :longitude
      t.string :address
      t.string :city
      t.string :country
      t.string :zip_code

      t.timestamps
    end
  end
end
