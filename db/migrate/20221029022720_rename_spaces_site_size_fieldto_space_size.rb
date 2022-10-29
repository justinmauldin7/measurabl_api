class RenameSpacesSiteSizeFieldtoSpaceSize < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :site_size, :space_size
  end
end
