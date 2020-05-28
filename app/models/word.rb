# /app/models/word.rb
class Word < ApplicationRecord
  belongs_to :user
  has_many :phrases, through: :matches
  validates :name,
            length: { minimum: 2, maximum: 25 },
            format: { with: /\A[a-zA-Z]+\z/ },
            allow_blank: false


end