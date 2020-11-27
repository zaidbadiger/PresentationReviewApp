class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :access_level
      t.string :name
      t.string :username
      t.string :password
      t.integer :section_id
      t.string :course_id

      t.timestamps
    end
  end
end
