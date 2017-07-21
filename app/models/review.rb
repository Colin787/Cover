class Review < ApplicationRecord

  belongs_to :user_by, foreign_key: "user_by", class_name: "User"
  belongs_to :user_about, foreign_key: "user_about", class_name: "User"
  belongs_to :job


  validates :job, presence: true
  validates :user_by, presence: true

  # this validates that the pair (job_id, user_by)
  # must be unique *together* in the table
  validates :job, uniqueness: { scope: :user_by }
  validates :comment, presence: true
  validates :rating, presence: true , 
                     numericality: {
                     greater_than: 0, 
                     less_than_or_equal_to: 5
                     }
  def job
    Job.find(job_id)
  end
end