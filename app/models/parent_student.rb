class ParentStudent < ApplicationRecord
  self.primary_key = "student_parent_id"
  self.table_name = "student_parents"
  belongs_to :parent 
  belongs_to :student 
end
