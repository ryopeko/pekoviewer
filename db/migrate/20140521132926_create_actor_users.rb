class CreateActorUsers < ActiveRecord::Migration
  def change
    create_table :actor_users do |t|
      t.integer :user_id, null: false
      t.string :actor_screen_name, null: false
      t.string :source_service_name, null: false

      t.timestamps
    end
  end
end
