class User < ApplicationRecord
  has_many :presents
  has_many :presentations, through: :presents

  has_many :rosters
  has_many :sections, through: :rosters

  belongs_to :section
  has_many :reviews
end
