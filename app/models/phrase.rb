class Phrase < ApplicationRecord
  has_many :word_phrases
  has_many :words, through: :word_phrases
end
