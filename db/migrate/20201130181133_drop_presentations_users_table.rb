class DropPresentationsUsersTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :presentations_users
  end
end
