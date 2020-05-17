# Word Model
class Word < ApplicationRecord
  belongs_to :user
  has_many :phrases, through: :matches
  validates :name,
            length: { minimum: 2, maximum: 25 }

end
