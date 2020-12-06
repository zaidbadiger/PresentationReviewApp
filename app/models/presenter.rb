class Presenter < ApplicationRecord
  # N:1 relationship with presentation
  belongs_to :presentation
  # N:1 relationship with user
  belongs_to :user
end
