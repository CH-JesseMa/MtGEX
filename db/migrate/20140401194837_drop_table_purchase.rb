class DropTablePurchase < ActiveRecord::Migration
  def change
    drop_table :purchase_details
    drop_table :purchases
  end
end
