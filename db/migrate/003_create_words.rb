class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :letter_id
      t.integer :user_id
      t.timestamps
    end
  end
end
