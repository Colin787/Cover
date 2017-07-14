class Worker < ApplicationRecord

  belongs_to :user
  has_many :applications
  has_many :comments

  validates :postal_code,
            presence: true

end
