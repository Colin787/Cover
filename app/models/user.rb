class User < ApplicationRecord

  has_secure_password

  belongs_to :usertype

  has_many :jobs
  has_many :applications
  has_many :experiences
  has_many :reviews, foreign_key: "user_by"
  has_many :reviews, foreign_key: "user_about"

  validates_uniqueness_of :email
  validate :user_validation

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    "#{street_address}, #{city}, #{province}, #{postal_code}"
  end

  private

  def user_validation
    puts "usertype is #{usertype}"
    if usertype.name == "worker"
      if first_name == ""
        errors.add(:base, "First name can't be empty")
      end
      if last_name == ""
        errors.add(:base, "Last name can't be empty")
      end
      if email == ""
        errors.add(:base, "Email can't be empty")
      end
      if cell == ""
        errors.add(:base, "Cell can't be empty")
      end
      if postal_code == ""
        errors.add(:base, "Postal code can't be empty")
      end
    end
    if usertype.name == "restaurant"
      if restaurant_name == ""
        errors.add(:base, "Restaurant name can't be empty")
      end
      if first_name == ""
        errors.add(:base, "First name can't be empty")
      end
      if last_name == ""
        errors.add(:base, "Last name can't be empty")
      end
      if email == ""
        errors.add(:base, "Email can't be empty")
      end
      if street_address == ""
        errors.add(:base, "Adress can't be empty")
      end
      if city == ""
        errors.add(:base, "City can't be empty")
      end
      if province == ""
        errors.add(:base, "Province can't be empty")
      end
      if postal_code == ""
        errors.add(:base, "Postal code can't be empty")
      end
      if cell == ""
        errors.add(:base, "Cell can't be empty")
      end
    end
  end
end
