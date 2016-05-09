class AddOutsourceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :outsource, :boolean
  end
end
