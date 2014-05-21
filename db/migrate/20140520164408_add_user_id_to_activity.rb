class AddUserIdToActivity < ActiveRecord::Migration
  def up
    add_column :activities, :user_id, :integer, null: false, default: 0

    Activity.reset_column_information

    Activity.all.each do |activity|
      user = User.where(name: activity.actor_screen_name).first
      p user
      activity.update_attributes!(user_id: user.id) if user
    end

    change_column :activities, :user_id, :integer, null: false
  end

  def down
    remove_column :activities, :user_id, :integer, null: false
  end
end
