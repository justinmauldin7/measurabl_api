class Site < ApplicationRecord
  belongs_to :portfolio
  has_many :spaces

  validates_presence_of :site_name, :site_address, :building_type
end
