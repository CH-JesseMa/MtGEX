class CreatePurchaseDetails < ActiveRecord::Migration
  def change
    create_table :purchase_details do |t|
      t.integer :listing_id
      t.integer :user_id

      t.timestamps
    end
  end
end
