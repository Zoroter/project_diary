class User < ApplicationRecord
  has_secure_password
  self.primary_key = "user_id"
  self.table_name = "users"
  has_one :address
  has_many :user_phones
  has_many :phones, through: :user_phones
  has_one :teacher
  has_one :parent
  has_one :student
  has_one :tutor

  def full_name 
    "#{name} #{surname}"
  end

end
