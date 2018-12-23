class CreateFloorAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :floor_areas do |t|
      t.string :unit
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
