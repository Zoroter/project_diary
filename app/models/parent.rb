class Parent < ApplicationRecord
  self.primary_key = "parent_id"
  belongs_to :user
  has_many :parent_students
  has_many :students, through: :parent_students
end
