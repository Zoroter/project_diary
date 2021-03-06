class Teacher < ApplicationRecord
  self.primary_key = "teacher_id"
  belongs_to :user
  has_many :attendances
  has_many :tests
  has_many :lessons
  has_many :subjects
  has_many :reprimands
  has_many :grades
  has_many :final_grades
  has_many :proposed_grades

  
  def id_full_name
    "#{id} #{user.name} #{user.surname}"
  end

  def full_name
    "#{user.name} #{user.surname}"
  end
  
end
