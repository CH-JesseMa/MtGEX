class ChangeTitleInPollsTable < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.rename :title, :condition
    end
  end
end
