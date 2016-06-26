class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :projects, :outsource, :integer
  end

  def down
    change_column :projects, :outsource, :boolean
  end
end
