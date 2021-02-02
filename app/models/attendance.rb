class Attendance < ApplicationRecord
  self.primary_key = "attendance_id"
  belongs_to :attendance_statuse, foreign_key: "status_id"
  belongs_to :student 
  belongs_to :teacher
  belongs_to :lesson
end
