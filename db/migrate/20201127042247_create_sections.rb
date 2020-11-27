class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.integer :section_number
      t.time :time
      t.string :course_id

      t.timestamps
    end
  end
end
