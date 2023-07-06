class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :space_name
      t.string :property_type
      t.integer :site_size
      t.integer :monthly_price

      t.timestamps
    end
  end
end
