class RemoveCategoryIdToProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :category_id
    
  end
end
