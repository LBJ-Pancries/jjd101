class AddMoreDetailToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :linkman, :string
    add_column :companies, :contact_number, :integer
  end
end
