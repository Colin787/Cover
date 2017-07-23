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

  def self.search(search)
    if search
      where('cast(rate as text) LIKE ? OR description LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end