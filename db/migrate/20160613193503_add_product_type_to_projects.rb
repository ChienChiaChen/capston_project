class AddProductTypeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :product_type, :integer
  end
end
