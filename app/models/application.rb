class Application < ApplicationRecord

  belongs_to :job

  validates :status, presence: true
end
