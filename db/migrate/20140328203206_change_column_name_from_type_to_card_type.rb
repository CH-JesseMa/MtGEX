class ChangeColumnNameFromTypeToCardType < ActiveRecord::Migration
  def change
    rename_column :listings, :type, :card_type
  end
end
