class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.integer  :user_id
      t.integer  :listing_id
      t.integer  :response
    end
  end
end
