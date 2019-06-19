class RemoveRowOrderToContracts < ActiveRecord::Migration[5.1]
  def change
    remove_column :contracts, :row_order
  end
end
