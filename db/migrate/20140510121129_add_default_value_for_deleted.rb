class AddDefaultValueForDeleted < ActiveRecord::Migration
  def up
    change_column :tweets, :deleted, :boolean, default: false
  end

  def down
    change_column :tweets, :deleted, :boolean, default: nil
  end
end
