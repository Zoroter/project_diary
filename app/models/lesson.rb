class Lesson < ApplicationRecord
  self.primary_key = "lesson_id"
  has_one :attendance 
  belongs_to :group
  belongs_to :teacher
  belongs_to :subject
  has_one :homework
  has_one :test
end
