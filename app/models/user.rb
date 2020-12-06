# Model to represent user of application
class User < ApplicationRecord
    before_save { self.email = email.downcase }
    # validate name, email, and password
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    # 1:N relationship with courses
    has_many :courses
    # N:M relationship with sections through rosters
    has_many :rosters
    has_many :sections, through: :rosters
    # N:M relationship with presentations through presenters
    has_many :presenters
    has_many :presentations, through: :presenters
    # 1:N relationship with reviews
    has_many :reviews
  end
