class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :status
      t.integer :price
      t.integer :new_price
      t.string :image
      t.text :description
      t.text :attribute
      t.float :average_point
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
