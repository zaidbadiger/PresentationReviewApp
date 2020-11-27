class RemoveSectionIdFromPresentation < ActiveRecord::Migration[6.0]
  def change
    remove_column :presentations, :section_id, :integer
  end
end
