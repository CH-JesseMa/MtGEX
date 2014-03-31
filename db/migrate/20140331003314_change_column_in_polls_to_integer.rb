class ChangeColumnInPollsToInteger < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.remove :condition
    end
  end
end
