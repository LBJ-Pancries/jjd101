class AddColumnSubprojectIdIntoContract < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :subproject_id, :integer
    add_index :contracts, :subproject_id
  end
end
