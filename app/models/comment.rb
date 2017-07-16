class Comment < ApplicationRecord

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  belongs_to :job

  validates :comment, presence: true

end