class Job < ApplicationRecord
  
  belongs_to :restaurant
  has_many   :comments
  has_many   :applications

  validates :start_time, presence: true
  validates :end_time,   presence: true
  validates :rate,       presence: true
  validates :tips,       presence: true
  validates :experience, presence: true
  validates :skill,      presence: true

end
