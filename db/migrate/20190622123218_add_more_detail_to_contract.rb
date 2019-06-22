class AddMoreDetailToContract < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :paid, :integer
    add_column :contracts, :unpaid, :integer
    add_column :contracts, :linkman, :string
    add_column :contracts, :contact_number, :integer
  end
end
