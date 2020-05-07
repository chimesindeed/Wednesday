class Letter < ApplicationRecord
  has_many :words
  has_many :phrases, through: :words

  validates :name,
            format: { with: /\A[a-zA-Z]+\z/ },
            uniqueness: true,
            allow_blank: false,
            length: { is: 1 }
end
