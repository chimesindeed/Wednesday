class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
    
   # validates :name,
               # format: { with: /\A[a-zA-Z]+\z/ },
               # allow_blank: false
  
  # before_save { self.name ? name.downcase! : return  }
end
