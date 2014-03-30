class AddStatusColumnToListingsTable < ActiveRecord::Migration
  def change
    add_column :listings, :status, :boolean
  end
end
