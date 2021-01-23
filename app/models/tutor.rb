class Tutor < ApplicationRecord
  self.primary_key = "tutor_id"
  belongs_to :group, foreign_key: "group_id", optional: true
  belongs_to :user

  def id_full_name
    "#{id} #{user.name} #{user.surname}"
  end

end
