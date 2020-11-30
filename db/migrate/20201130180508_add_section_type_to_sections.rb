class AddSectionTypeToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :section_type, :string
  end
end
