class Application < ApplicationRecord

  belongs_to :job
  belongs_to :worker

  validates :status, presence: true

end
