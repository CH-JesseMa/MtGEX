class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :country
      t.string :profile_img
      t.integer :warning
      t.integer :grader_level

      t.timestamps
    end
  end
end
