class Presentation < ApplicationRecord
  has_many :presents
  has_many :users, through: :presents

  has_many :section_presentations
  has_many :sections, through: :section_presentations

  has_many :reviews
end
