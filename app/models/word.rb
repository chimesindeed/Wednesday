# Word Model
class Word < ApplicationRecord
  belongs_to :letter
  has_many :word_phrases
  has_many :phrases, through: :word_phrases

  validates :name,
            format: { with: /\A[a-zA-Z]+\z/ },
            uniqueness: true,
            allow_blank: false,
            length: { minimum: 2, maximum: 25 }
end
