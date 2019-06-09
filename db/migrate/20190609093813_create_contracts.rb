class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :tittle
      t.string :party_a
      t.string :party_b
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
