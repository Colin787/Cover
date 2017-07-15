class Worker < ApplicationRecord

  has_many :applications
  has_many :reviews
  belongs_to :user

  validates :postal_code,
            :image,
            presence: true


end
