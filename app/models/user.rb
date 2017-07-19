class User < ApplicationRecord

  has_secure_password

  belongs_to :usertype

  has_many :jobs

  has_many :applications

  validates_uniqueness_of :email
  validate :user_validation



  private


  def user_validation
    puts "usertype is #{usertype}"
    if usertype.name == "worker"
      if first_name == false
        error.add(:firs_name, "First name can't be blank")
      end
      if last_name == false
        error.add(:last_name, "Last name can't be blank")
      end
      if email == false
        error.add(:email, "Email can't be blank")
      end
      if cell == false
        error.add(:cell, "Cell can't be blank")
      end
      if postal_code == false
        error.add(:postal_code, "Postal code can't be blank")
      end
    end
    if usertype.name == "restaurant"
      if restaurant_name == false
        error.add(:restaurant_name, "Restaurant name can't be blank")
      end
      if first_name == false
        error.add(:firs_name, "First name can't be blank")
      end
      if last_name == false
        error.add(:last_name, "Last name can't be blank")
      end
      if email == false
        error.add(:email, "Email can't be blank")
      end
      if street_address == false
        error.add(:street_address, "Adress can't be blank")
      end
      if city == false
        error.add(:city, "City can't be blank")
      end
      if province == false
        error.add(:province, "Province can't be blank")
      end
      if postal_code == false
        error.add(:postal_code, "Postal code can't be blank")
      end
      if cell == false
        error.add(:cell, "Cell can't be blank")
      end
    end
  end
end
