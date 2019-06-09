class AddTitleToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :title, :string
  end
end
