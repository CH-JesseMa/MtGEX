class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text     :body
      t.integer  :listing_id
      t.integer  :user_id
    end
  end
end
