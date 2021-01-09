class Teacher < ApplicationRecord
  self.primary_key = "teacher_id"
  belongs_to :user, foreign_key: "user_id"
  has_many :attendances
  has_many :tests
  has_many :lessons
  has_many :subjects
  has_many :reprimands
  has_many :grades
end
