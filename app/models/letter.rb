class Letter < ApplicationRecord
  has_many :words
  has_many :phrases, through: :words
end
