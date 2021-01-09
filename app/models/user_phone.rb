class UserPhone < ApplicationRecord
  self.table_name = "user_phones"
  self.primary_key = "user_phone_id"
  belongs_to :user
  belongs_to :phone
end
