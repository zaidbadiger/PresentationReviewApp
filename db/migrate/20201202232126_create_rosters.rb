class CreateRosters < ActiveRecord::Migration[6.0]
  def change
    create_table :rosters do |t|
      t.integer :section_id
      t.integer :user_id

      t.timestamps
    end
  end
end
