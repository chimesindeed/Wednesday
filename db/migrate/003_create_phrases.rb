class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.string :name
      t.integer :word_id
      t.timestamps
    end
  end
end
