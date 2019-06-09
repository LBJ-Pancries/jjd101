class RemoveColumnTittle < ActiveRecord::Migration[5.1]
  def change
    remove_column :contracts, :tittle
  end
end
