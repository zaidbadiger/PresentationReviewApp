# Model to represent Sections for a course
class Section < ApplicationRecord
  # N:1 relationship with course
  belongs_to :course
  # N:M relationship with users through rosters
  has_many :rosters
  has_many :users, through: :rosters
  # 1:N relationship with presentations
  has_many :presentations
end
