# Word Model
class Word < ApplicationRecord
  belongs_to :letter
  has_many :word_phrases
  has_many :phrases, through: :word_phrases

  validates :name,
            length: { minimum: 2, maximum: 25 }
end
