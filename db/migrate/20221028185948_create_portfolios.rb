class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.string :portfolio_name
      t.string :company_name
      t.integer :company_size
      t.string :country

      t.timestamps
    end
  end
end
