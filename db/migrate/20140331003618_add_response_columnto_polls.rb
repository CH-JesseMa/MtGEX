class AddResponseColumntoPolls < ActiveRecord::Migration
  def change
    add_column :polls, :response, :integer
  end
end
