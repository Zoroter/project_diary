class Grade < ApplicationRecord
  self.table_name = "grades"
  self.primary_key = "grade_id"
  belongs_to :teacher 
  belongs_to :subject 
  belongs_to :student
end
