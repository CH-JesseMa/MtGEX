class RemoveUserIdFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :user_id
  end
end
