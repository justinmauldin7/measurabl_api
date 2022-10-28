class Site < ApplicationRecord
  belongs_to :portfolio

  validates_presence_of :site_name, :site_address, :building_type
end
