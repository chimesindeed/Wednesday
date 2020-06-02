class Phrase < ApplicationRecord
  belongs_to :user
  has_many :words, through: :matches
  
  validates  :name,
             length: { minimum: 4, maximum: 25, :message => 'must be between 4 and 25 characters' },
             format: { with: /\A[a-zA-Z]+\z/, :message => 'only letters please' }
end
