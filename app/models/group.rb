class Group < ApplicationRecord
  self.primary_key = "group_id"
  self.table_name = "groups"
  has_one :tutor
  has_many :tests
  has_many :students
  has_many :subjects
end
