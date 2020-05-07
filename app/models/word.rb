# Word Model
class Word < ApplicationRecord
  belongs_to :letter
  has_many :phrases

  validates :name,
            format: { with: /\A[a-zA-Z]+\z/ },
            uniqueness: true,
            allow_blank: false,
            allow_nil: false,
            length: { minimum: 2, maximum: 25 }
end
