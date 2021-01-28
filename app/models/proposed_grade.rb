class ProposedGrade < ApplicationRecord
  self.primary_key = "proposed_grade_id"
  belongs_to :subject
  belongs_to :student
  belongs_to :teacher
end
