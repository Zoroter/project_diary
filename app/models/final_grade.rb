class FinalGrade < ApplicationRecord
  self.primary_key = "final_grade_id"
  belongs_to :subject 
  belongs_to :student
  belongs_to :teacher
end
