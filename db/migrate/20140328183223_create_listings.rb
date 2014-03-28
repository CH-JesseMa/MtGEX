class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :card
      t.string :edition
      t.boolean :type
      t.string :condition
      t.integer :quantity
      t.float :price
      t.text :description
      t.text :image_front
      t.text :image_back
      t.timestamps
    end
  end
end
