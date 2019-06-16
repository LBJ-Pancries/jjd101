class AddCategoryIdToContract < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :category_id, :integer
    add_index :contracts, :category_id
  end
end
