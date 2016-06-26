class AddManagerSupportToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :manager_support, :integer
  end
end
