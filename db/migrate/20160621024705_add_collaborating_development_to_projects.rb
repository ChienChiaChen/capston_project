class AddCollaboratingDevelopmentToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :collaboratingdevelopment, :integer
  end
end
