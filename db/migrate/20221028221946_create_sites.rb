class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :site_address
      t.string :building_type

      t.timestamps
    end
  end
end
