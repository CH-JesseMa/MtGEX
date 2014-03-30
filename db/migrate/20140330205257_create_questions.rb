class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :condition
      t.integer :listing_id

      t.timestamps
    end
  end
end
