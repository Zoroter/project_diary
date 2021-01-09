class User < ApplicationRecord
  has_secure_password
  self.primary_key = "user_id"
  self.table_name = "users"
  has_one :address
  has_many :user_phones, foreign_key: "user_phone_id"
  has_many :phones, through: :user_phones, foreign_key: "phone_id"
  has_one :teacher, foreign_key: "teacher_id"
  has_one :parent
  has_one :student
  has_one :tutor

end
