class User < ApplicationRecord

  has_many :restaurants
  #todo does has_one require one, or does it mean zero or one?
  has_one :worker

  validates :first_name,
            :last_name,
            :email,
            :cell,
            :password_digest,
            :user_type,
            presence: true
end
