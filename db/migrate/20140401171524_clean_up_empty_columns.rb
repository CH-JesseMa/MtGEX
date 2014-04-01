class CleanUpEmptyColumns < ActiveRecord::Migration
  def change
    remove_column :users, :country
    remove_column :users, :profile_img
    remove_column :users, :warning
    remove_column :users, :grader_level
    remove_column :purchases, :buyer
    remove_column :purchases, :seller
    remove_column :purchases, :amount
    add_column :purchases, :body, :text
    add_column :purchases, :buyer_status, :boolean, default: false
    add_column :purchases, :seller_status, :boolean, default: false






  end
end
