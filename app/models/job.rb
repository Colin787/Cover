class Job < ApplicationRecord

  belongs_to :user
  belongs_to :jobtype
  has_many :applications, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :start_time,
            :end_time,
            :rate,
            presence: true
end
