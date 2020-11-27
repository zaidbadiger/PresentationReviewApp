class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.date :date
      t.date :close_date
      t.string :title
      t.integer :section_id

      t.timestamps
    end
  end
end
