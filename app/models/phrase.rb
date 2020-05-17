class Phrase < ApplicationRecord
  belongs_to :user
  has_many :words, through: :matches
end
