class Course < ApplicationRecord
    # N:1 relationship with user
    belongs_to :user
    # 1:N relationship with sections
    has_many :sections
    
end
