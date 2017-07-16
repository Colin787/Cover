class User < ApplicationRecord

  belongs_to :usertype
  has_many :jobs
  has_many :comments, as: :commentable

  validates :email,
            :password_digest,
            :cell,
            :postal_code,
            presence: true
end
