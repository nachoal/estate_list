class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :url
      t.string :title
      t.string :content
      t.string :type
      t.string :agency
      t.integer :rooms
      t.integer :bathrooms
      t.integer :parking
      t.string :city
      t.string :city_area
      t.string :region
      t.string :longitude
      t.string :latitude
      t.string :address
      t.string :eb_id
      t.string :eb_date
      t.string :eb_time
      t.integer :floor_number
      t.string :eb_year
      t.boolean :is_new

      t.timestamps
    end
  end
end
