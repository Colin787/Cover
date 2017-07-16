class Job < ApplicationRecord

  belongs_to :user
  has_many :applications
  has_many :comments, as: :commentable

  validates :start_time,
            :end_time,
            :rate,
            presence: true
end
