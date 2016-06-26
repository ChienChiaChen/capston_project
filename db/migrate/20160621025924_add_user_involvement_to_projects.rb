class AddUserInvolvementToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :user_involvement, :integer
  end
end
