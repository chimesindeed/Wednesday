class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :word_id
      t.integer :phrase_id
      t.integer :user_id
      t.integer :degree
    end
  end
end
