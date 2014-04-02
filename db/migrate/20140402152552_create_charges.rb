class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer  :listing_id

    end
  end
end
