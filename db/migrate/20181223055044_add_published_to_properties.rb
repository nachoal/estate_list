class AddPublishedToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :published, :boolean
  end
end
