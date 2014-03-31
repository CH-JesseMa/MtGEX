class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :amount
      t.integer :listing_id
      t.integer :user_id
      t.integer :buyer
      t.integer :seller

      t.timestamps
    end
  end
end
