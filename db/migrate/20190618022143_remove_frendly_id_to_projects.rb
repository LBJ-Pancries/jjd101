class RemoveFrendlyIdToProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :friendly_id
    remove_column :contracts, :friendly_id
  end
end
