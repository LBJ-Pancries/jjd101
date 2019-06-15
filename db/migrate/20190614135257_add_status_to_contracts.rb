class AddStatusToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :status, :string, :default => "draft"
  end
end
