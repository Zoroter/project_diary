class Term < ApplicationRecord
  self.primary_key = "term_id"
  belongs_to :subject
end