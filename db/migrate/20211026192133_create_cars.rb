class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :manufacturer
      t.string :year
      t.text :img_url
      t.integer :price

      t.timestamps
    end
  end
end
