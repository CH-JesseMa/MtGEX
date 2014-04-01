class AddBuyerToListingsTable < ActiveRecord::Migration
  def change
    add_column :listings, :buyer, :integer

  end
end
