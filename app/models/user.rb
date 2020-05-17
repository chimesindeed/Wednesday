#
class User < ApplicationRecord
  has_many :words
  has_many :phrases
  has_many :matches
  
  has_secure_password

  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: /\A([^@\s]+)@((?:[a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  # validates :password,
            # format
            # length
end
