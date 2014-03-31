class RemoveConditionColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :condition
  end
end
