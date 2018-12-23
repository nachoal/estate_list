class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.string :currency
      t.decimal :amount
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
