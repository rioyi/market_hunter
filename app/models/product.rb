class Product < ApplicationRecord
  belongs_to :product_kind
  belongs_to :unit_measurement
end
