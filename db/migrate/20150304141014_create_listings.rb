class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 5

      t.timestamps null: false
    end
  end
end
