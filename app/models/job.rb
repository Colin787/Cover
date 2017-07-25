class Job < ApplicationRecord

  belongs_to :user
  belongs_to :jobtype
  has_many :applications, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :start_time,
            :end_time,
            :rate,
            presence: true

  

  def self.search(search)
    if search
      joins(:jobtype).where('cast(start_time as text) 
      LIKE ? OR cast(end_time as text) LIKE ?
       OR cast(rate as text) LIKE ?
        OR description LIKE ?
         OR jobtypes.name LIKE ?', 
        "%#{search}%", 
        "%#{search}%", 
        "%#{search}%",
        "%#{search}%", 
        "%#{search}%")
    else
      all
    end
  end

end