class AddExperienceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :experience, :integer
  end
end
