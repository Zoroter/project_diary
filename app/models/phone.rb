class Phone < ApplicationRecord
  self.primary_key = "phone_id"
  has_many :user_phones, foreign_key: "user_phone_id"
  has_many :users, through: :user_phones
end
