class FixPurchases < ActiveRecord::Migration
  def change
    remove_column :purchases, :body
    add_column :purchase_details, :body, :text
  end
end
