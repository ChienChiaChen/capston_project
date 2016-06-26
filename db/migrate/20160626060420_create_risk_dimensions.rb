class CreateRiskDimensions < ActiveRecord::Migration
  def change
    create_table :risk_dimensions do |t|
      t.string :dimension

      t.timestamps null: false
    end
  end
end
