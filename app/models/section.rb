class Section < ApplicationRecord
  has_many :section_presentations
  has_many :presentations, through: :sections_presentations

  belongs_to :course
  has_many :users
end
