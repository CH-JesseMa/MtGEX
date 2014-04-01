class AddTotalAmount < ActiveRecord::Migration
  def change
    add_column :listings, :total_amount, :integer
  end
end
