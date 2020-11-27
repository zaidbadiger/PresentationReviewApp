class CreateSectionPresentations < ActiveRecord::Migration[6.0]
  def change
    create_table :section_presentations do |t|
      t.references :section, null: false, foreign_key: true
      t.references :presentation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
