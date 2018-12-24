class Property < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :prices 
  has_many :plot_areas
  has_many :floor_areas
end
