class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :listing_id

      t.timestamps
    end
  end
end
