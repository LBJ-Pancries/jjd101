class AddFriendlyIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :friendly_id, :string
    add_index :projects, :friendly_id, :unique => true

    Project.find_each do |p|
      p.update( :friendly_id => SecureRandom.uuid )
    end
  end
end
