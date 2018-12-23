class AddFieldToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :postcode, :string
  end
end
