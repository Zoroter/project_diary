class Student < ApplicationRecord
  self.primary_key = "student_id"
  has_many :parent_students
  has_many :parents, through: :parent_students
  belongs_to :user
  has_many :attendances
  belongs_to :group, optional: true
  has_many :reprimands
  has_many :proposed_grades
  has_many :grades
  has_many :final_grades
end
