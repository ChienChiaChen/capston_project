class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :manager_name
      t.date :identify_date
      t.integer :scope
      t.integer :time
      t.integer :cost
      t.integer :member

      t.timestamps null: false
    end
  end
end
