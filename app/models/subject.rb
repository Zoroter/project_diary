class Subject < ApplicationRecord
  self_primary_key = "subject_id"
  has_many :lessons
  belongs_to :teacher
  has_many :proposed_grades
  has_many :grades
  has_many :final_grades
end
