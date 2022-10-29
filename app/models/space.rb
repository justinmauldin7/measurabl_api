class Space < ApplicationRecord
  validates_presence_of :space_name, :property_type, :space_size, :monthly_price
end
