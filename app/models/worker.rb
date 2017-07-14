class Worker < ApplicationRecord

  has_many :applications
  has_many :reviews
  
  validates :postal_code,
            :image,
            presence: true


end
