class AddFriendlyIdToContracts < ActiveRecord::Migration[5.1]
  def change
    add_column :contracts, :friendly_id, :string
    add_index :contracts, :friendly_id, :unique => true

    Contract.find_each do |c|
      c.update( :friendly_id => SecureRandom.uuid )
    end
  end
end
