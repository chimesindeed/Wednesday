class Match < ApplicationRecord
  belongs_to :user
  belongs_to :word
  belongs_to :match
end
