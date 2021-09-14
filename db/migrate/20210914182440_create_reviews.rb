class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.references :craft, null: false, foreign_key: true
      t.references :consumer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
