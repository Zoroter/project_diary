class Group < ApplicationRecord
  self.table_name = "classes"
  self.primary_key = "class_id"
  has_one :tutor, foreign_key: "tutor_id"
  has_many :tests, foreign_key: "test_id"
  has_many :students, foreign_key: "student_id"
  has_many :lessons, foreign_key: "lesson_id"
end
