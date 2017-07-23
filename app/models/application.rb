class Application < ApplicationRecord

  belongs_to :user
  belongs_to :job

  validates :job, uniqueness: { scope: :user_id }
  validates :status, presence: true
end
