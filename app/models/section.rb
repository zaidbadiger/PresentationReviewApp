class Section < ApplicationRecord
  has_many :rosters
  has_many :users, through: :rosters
  
  has_many :presentations
  
  belongs_to :course
end
