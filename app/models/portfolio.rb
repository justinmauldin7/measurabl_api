class Portfolio < ApplicationRecord
  has_many :sites

  validates_presence_of :portfolio_name, :company_name, :company_size, :country
end
