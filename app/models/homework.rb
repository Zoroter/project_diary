class Homework < ApplicationRecord
  self.primary_key = "homework_id"
  belongs_to :lesson
end
