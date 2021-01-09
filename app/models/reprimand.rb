class Reprimand < ApplicationRecord
  self.primary_key = "reprimand_id"
  belongs_to :student
  belongs_to :teacher
  belongs_to :lesson
end
