class Letter < ApplicationRecord
  has_many :words
  has_many :phrases, through: :words

  validates :name,
            length: { is: 1 }
end
