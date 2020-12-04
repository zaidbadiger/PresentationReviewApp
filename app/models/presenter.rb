class Presenter < ApplicationRecord
  belongs_to :presentation
  belongs_to :user
end
