class Section < ApplicationRecord
    belongs_to :course
    has_many :rosters
    has_many :users, through: :rosters
    has_many :presentations
end
