class Roster < ApplicationRecord    
  belongs_to :user
  belongs_to :section
end
