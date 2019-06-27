class AddColumnProjectIdIntoContract < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :project_id, :integer
    add_index :contracts, :project_id
  end
end
