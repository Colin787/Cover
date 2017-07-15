class User < ApplicationRecord

  has_many :jobs
  has_many :comments

  validates :user_type,
            :email,
            :password_digest,
            :cell,
            :postal_code,
            presence: true
end
