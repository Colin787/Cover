class Job < ApplicationRecord

  belongs_to :restaurant
  has_many   :comments
  has_many   :applications

  validates :start_time,
            :end_time,
            :rate,
            :description,
            presence: true
end
