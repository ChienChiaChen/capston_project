class Newrisk < ActiveRecord::Migration
  def change
  	create_table :risk_relations do |t|
      t.integer :Risk_form_id
      t.integer :Risk_to_id

      t.timestamps null: false
    end
  end
end
