class CreateConsumers < ActiveRecord::Migration[6.0]
  def change
    create_table :consumers do |t|
      t.string :user
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :age
      t.string :country
      t.string :city
      t.string :employment
      t.references :social_network, null: false, foreign_key: true

      t.timestamps
    end
  end
end
