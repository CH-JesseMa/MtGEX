class CleanUpEmptyColumns < ActiveRecord::Migration
  def change
    remove_column :users, :country
    remove_column :users, :profile_img
    remove_column :users, :warning
    remove_column :users, :grader_level






  end
end
