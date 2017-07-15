class Restaurant < ApplicationRecord

  has_many :postings
  has_many :reviews
  belongs_to :user

  validates :restaurant_name,
            :street_address,
            :city,
            :province,
            :postal_code,
            :description,
            :image,
            presence: true
end
