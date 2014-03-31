class DefaultListingStatusTrue < ActiveRecord::Migration
  def change
    change_column :listings, :status, :boolean, default: true

  end
end
