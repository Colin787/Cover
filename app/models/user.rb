class User < ApplicationRecord
  has_one: restaurant
  has_one: worker
  has_secure_password

  validates :first_name,
            :last_name,
            :email,
            :cell,
            :user_type,
            presence: true
end
