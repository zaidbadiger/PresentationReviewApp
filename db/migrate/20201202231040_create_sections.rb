class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.time :time
      t.integer :course_id
      t.integer :section_number

      t.timestamps
    end
  end
end
