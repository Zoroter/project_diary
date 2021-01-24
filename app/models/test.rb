class Test < ApplicationRecord
  self.primary_key = "test_id"
  belongs_to :teacher
  belongs_to :group
  belongs_to :lesson
end
