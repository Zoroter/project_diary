class AttendancesStatus < ApplicationRecord
  self.table_name = "attendance_statuses"
  self.primary_key = "status_id"
  has_many :attendances
end
