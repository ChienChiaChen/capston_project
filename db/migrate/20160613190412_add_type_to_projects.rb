class AddTypeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_type, :integer
  end
end
