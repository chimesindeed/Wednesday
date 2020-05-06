class Word < ApplicationRecord
  belongs_to :letter
  has_many :phrases
end
