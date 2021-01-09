class Lesson < ApplicationRecord
  self.primary_key = "lesson_id"
  has_one :attendance 
  belongs_to :group, foreign_key: "class_id"
  belongs_to :teacher
  belongs_to :subject
  has_one :homework
  has_one :test, foreign_key: "test_id"
end
