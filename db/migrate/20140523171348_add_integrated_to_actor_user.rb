class AddIntegratedToActorUser < ActiveRecord::Migration
  def change
    add_column :actor_users, :integrated, :boolean, defalt: false
  end
end
