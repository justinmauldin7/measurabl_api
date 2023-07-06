class AddSitesToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :spaces, :site, foreign_key: true
  end
end
