class Presentation < ApplicationRecord
  belongs_to :section
  has_many :presenters
  has_many :users, through: :presenters
  has_many :reviews
end
