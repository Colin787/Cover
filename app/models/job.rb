class Job < ApplicationRecord

  belongs_to :restaurants
  has_many :comments
  has_many :applications

  validates :start_time,
            :end_time,
            :rate,
            presence : true

end
