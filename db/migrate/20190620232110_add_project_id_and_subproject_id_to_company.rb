class AddProjectIdAndSubprojectIdToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :project_id, :interge
    add_index :companies, :project_id
    add_column :companies, :subproject_id, :interge
    add_index :companies, :subproject_id
  end
end
