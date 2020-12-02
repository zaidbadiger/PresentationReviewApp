class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :presentation_id
      t.integer :score
      t.text :comment

      t.timestamps
    end
  end
end
