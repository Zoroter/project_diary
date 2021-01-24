class Teacher < ApplicationRecord
  self.primary_key = "teacher_id"
  belongs_to :user, foreign_key: "user_id"
  has_many :attendances
  has_many :tests
  has_many :lessons
  has_many :subjects
  has_many :reprimands
  has_many :grades
  
  def id_full_name
    "#{id} #{user.name} #{user.surname}"
  end
  
end
