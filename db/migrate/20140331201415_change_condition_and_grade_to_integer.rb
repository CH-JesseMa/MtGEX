class ChangeConditionAndGradeToInteger < ActiveRecord::Migration
  def change
    change_column :polls, :response, :integer
    change_column :listings, :condition, :integer
  end
end
