class Comment < ApplicationRecord

  belongs_to :worker
  belongs_to :job

  validates :comment, presence: true

end