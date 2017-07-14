class Restaurant < ApplicationRecord
  
  has_many :postings
  has_many :reviews 

end
