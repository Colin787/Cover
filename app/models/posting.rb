class Posting < ApplicationRecord
  
  belongs_to :restaurant
  has_many   :comments
  has_many   :applications

end
