class Presentation < ApplicationRecord
    has_many :presents
    has_many :users, through: :presents
  
    belongs_to :section
    
    has_many :reviews
end
