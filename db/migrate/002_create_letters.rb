class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.string :name
      t.string :user_id
      t.timestamps
    end
  end
end
