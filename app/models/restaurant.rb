class Restaurant < ApplicationRecord

  has_many :jobs

  validates :restaurant_name,
            :street_address,
            :city,
            :province,
            :postal_code,
            :description,
            presence: true

end
