class RemoveColumnQuantityFromListing < ActiveRecord::Migration
  def change
    remove_column :listings, :quantity
  end
end
