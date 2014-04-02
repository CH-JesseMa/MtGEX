class CreatTableUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string   :username
    t.string   :email
    t.string   :password_digest
    t.boolean  :admin,           default: false
    t.integer  :purchase_id
  end
end
