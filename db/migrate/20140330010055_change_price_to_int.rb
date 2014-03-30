class ChangePriceToInt < ActiveRecord::Migration
  def change
    change_table :listings do |t|
      t.change :price, :integer
    end
  end
end
