class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :character_class
      t.string :image

      t.timestamps
    end
  end
end
