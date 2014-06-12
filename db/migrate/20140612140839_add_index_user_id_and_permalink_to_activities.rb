class AddIndexUserIdAndPermalinkToActivities < ActiveRecord::Migration
  def change
    add_index :activities, [:user_id, :permalink], unique: true
  end
end
