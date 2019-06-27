class UserIdIntoContract < ActiveRecord::Migration[5.1]
  def change
    remove_column :contracts, :project_id
    remove_column :contracts, :subproject_id
    remove_column :contracts, :user_id
  end
end
