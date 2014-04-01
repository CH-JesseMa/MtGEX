class AddConfirmToListings < ActiveRecord::Migration
  def change
    add_column :listings, :buyer_confirm, :boolean, default: false
    add_column :listings, :seller_confirm, :boolean, default: false
    add_column :listings, :admin_confirm, :boolean, default: false
    add_column :listings, :total_amount, :float

  end
end
