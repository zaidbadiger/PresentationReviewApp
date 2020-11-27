class RemoveForeignKeys < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :section_presentations, :presentations
    remove_foreign_key :section_presentations, :sections
  end
end
