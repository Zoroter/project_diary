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
    "#{name} #{sname} #{surname}"
  end

  def self.matches(field_name, param)
    where("#{field_name} like ?", "%#{param}%")
  end 

  def self.search(param)
    if param
      param.strip!
      result = (matches('email', param) + matches('name', param) + matches('sname', param) + matches('surname', param) + matches('pin', param)).uniq
      result 
    end
  end 

end
