class AddPurchasesToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :purchase_id, :integer
  end
end
