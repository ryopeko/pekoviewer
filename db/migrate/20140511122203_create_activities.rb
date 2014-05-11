class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :actor_screen_name
      t.string :source_service_name, null: false
      t.string :source_type, null: false
      t.text :description
      t.text :permalink
      t.boolean :deleted, default: false

      t.timestamps
    end
  end
end
