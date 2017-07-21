class Job < ApplicationRecord

  belongs_to :user
  belongs_to :jobtype
  has_many :applications
  has_many :comments
  has_many :reviews

  validates :start_time,
            :end_time,
            :rate,
            presence: true
end
