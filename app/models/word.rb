# /app/models/word.rb
class Word < ApplicationRecord
  belongs_to :user
  has_many   :phrases, through: :matches

  validates  :name,
             length: { minimum: 2, maximum: 25, :message => 'must be between 2 and 25 characters' },
             format: { with: /\A[a-zA-Z]+\z/, :message => 'only letters please' }

             before_save { self.name.downcase! }
  
  def self.order_words
   Word.order(:name)
  end

end
