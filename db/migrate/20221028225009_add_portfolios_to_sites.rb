class AddPortfoliosToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :portfolio, foreign_key: true
  end
end
