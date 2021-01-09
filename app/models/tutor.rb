class Tutor < ApplicationRecord
  self.primary_key = "tutor_id"
  belongs_to :group, foreign_key: "class_id"
  belongs_to :user
end
