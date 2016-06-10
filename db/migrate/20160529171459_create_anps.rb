class CreateAnps < ActiveRecord::Migration
  def change
    create_table :anps do |t|
      t.text :super
      t.text :sub

      t.timestamps null: false
    end
  end
end
