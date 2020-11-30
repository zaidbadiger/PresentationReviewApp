class AddSectionIdToPresentations < ActiveRecord::Migration[6.0]
  def change
    add_column :presentations, :section_id, :integer
  end
end
