class Address < ApplicationRecord
  self.primary_key = "address_id"
  self.table_name = "addresses"
  belongs_to :user
end
