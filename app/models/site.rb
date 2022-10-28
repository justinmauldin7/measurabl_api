class Site < ApplicationRecord
  validates_presence_of :site_name, :site_address, :building_type
end
