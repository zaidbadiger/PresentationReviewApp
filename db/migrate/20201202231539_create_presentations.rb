class CreatePresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.integer :section_id
      t.date :open_date
      t.date :close_date
      t.string :title

      t.timestamps
    end
  end
end
