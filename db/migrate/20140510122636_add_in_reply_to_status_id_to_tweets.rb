class AddInReplyToStatusIdToTweets < ActiveRecord::Migration
  def up
    add_column :tweets, :in_reply_to_status_id, :integer, limit: 8
  end

  def down
    remove_column :tweets, :in_reply_to_status_id, :integer, limit: 8
  end
end
