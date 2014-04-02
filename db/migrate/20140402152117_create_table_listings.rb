class CreateTableListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|

      t.string   :card
      t.string   :edition
      t.string   :card_type
      t.integer  :price
      t.text     :description
      t.text     :image_front
      t.text     :image_back
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean  :status,       default: true
      t.integer  :user_id
      t.integer  :condition
      t.integer  :buyer
      t.integer  :total_amount
    end
  end
end
