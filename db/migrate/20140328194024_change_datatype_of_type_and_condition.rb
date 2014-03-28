class ChangeDatatypeOfTypeAndCondition < ActiveRecord::Migration
  def change
    change_table :listings do |t|
      t.change :type, :string
      t.change :condition, :string
    end
  end
end
