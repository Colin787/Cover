class Review < ApplicationRecord

  belongs_to :user, foreign_key: "user_by"
  belongs_to :user, foreign_key: "user_about"

end
