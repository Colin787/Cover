class Application < ApplicationRecord

  belongs_to :user
  belongs_to :job

  validates :status, presence: true

end
