class AddSupplierSupportToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :supplier_support, :integer
  end
end
