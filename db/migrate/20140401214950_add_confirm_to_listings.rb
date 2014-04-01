class AddConfirmToListings < ActiveRecord::Migration
  def change
    add_column :listings, :buyer_amount, :integer
    add_column :listings, :seller_amount, :integer
    add_column :listings, :total_amount, :integer

  end
end
