class Presentation < ApplicationRecord
  # N:1 relationship with section
  belongs_to :section
  # N:M relationship with users through presenters
  has_many :presenters
  has_many :users, through: :presenters
  # 1:N relationship with reviews
  has_many :reviews
end
