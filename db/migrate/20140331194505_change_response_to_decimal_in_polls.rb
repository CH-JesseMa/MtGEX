class ChangeResponseToDecimalInPolls < ActiveRecord::Migration
  def change
    change_column :polls, :response, :decimal, :precision => 10, :scale => 2
  end
end
