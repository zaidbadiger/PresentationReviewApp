class Review < ApplicationRecord
  # N:1 relationship with user
  belongs_to :user
  # N:1 relationship with presentation
  belongs_to :presentation
end
