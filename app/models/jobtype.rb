class Jobtype < ApplicationRecord

  has_many :jobs
  has_many :experiences

end
