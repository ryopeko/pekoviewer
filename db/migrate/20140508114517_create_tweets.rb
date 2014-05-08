class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :tweet_id, limit: 8
      t.string :screen_name
      t.text :tweet_text
      t.boolean :deleted

      t.timestamps
    end
  end
end
