class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :point

      t.timestamps
    end
  end
end
