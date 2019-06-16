class AddRowOrderToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :row_order, :integer

    Contract.find_each do |c|
      c.update( :row_order_position => :last )
    end

    add_index :contracts, :row_order
  end
end
