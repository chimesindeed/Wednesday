class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name,
            format: { with: /\A[a-zA-Z]+\z/ },
            uniqueness: true,
            allow_blank: false
  
  before_save { name.downcase! }
end
