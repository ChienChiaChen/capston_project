class AddRequirementToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :req_stability, :integer
    add_column :projects, :req_clear, :integer
  end
end
