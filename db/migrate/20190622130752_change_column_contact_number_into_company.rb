class ChangeColumnContactNumberIntoCompany < ActiveRecord::Migration[5.1]
  def up
    change_column :companies, :contact_number, :string
  end

  def down
    change_column :companies, :contact_number, :integer
  end
end
