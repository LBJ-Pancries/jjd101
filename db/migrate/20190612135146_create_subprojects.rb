class CreateSubprojects < ActiveRecord::Migration[5.1]
  def change
    create_table :subprojects do |t|
      t.string :title
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
