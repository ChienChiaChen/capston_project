class AddDevelopmentProcessToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :development_process, :integer
  end
end
