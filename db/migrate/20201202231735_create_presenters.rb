class CreatePresenters < ActiveRecord::Migration[6.0]
  def change
    create_table :presenters do |t|
      t.integer :user_id
      t.integer :presentation_id

      t.timestamps
    end
  end
end
