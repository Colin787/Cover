class Job < ApplicationRecord

  belongs_to :user
  has_many :applications
  has_many :comments

  validates :start_time,
            :end_time,
            :rate,
            presence: true
end
