class ChangePropertyType < ActiveRecord::Migration[5.2]
  def change
    rename_column :properties, :type, :eb_type
  end
end
