class CreateAddrisks < ActiveRecord::Migration
  def change
    create_table :addrisks do |t|
      t.string :riskclass
      t.string :riskfactor

      t.timestamps null: false
    end
  end
end
