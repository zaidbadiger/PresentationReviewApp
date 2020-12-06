class Roster < ApplicationRecord
  # N:1 relationship with section
  belongs_to :section
  # N:1 relationship with user
  belongs_to :user
end
