class Test < ApplicationRecord
  self.primary_key = "test_id"
  belongs_to :teacher
  belongs_to :group, foreign_key: "class_id"
  belongs_to :lesson, foreign_key: "lesson_id"
end
