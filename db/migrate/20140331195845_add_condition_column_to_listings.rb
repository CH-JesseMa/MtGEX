class AddConditionColumnToListings < ActiveRecord::Migration
  def change
    add_column :listings, :condition, :decimal, :precision => 10, :scale => 2
  end
end
