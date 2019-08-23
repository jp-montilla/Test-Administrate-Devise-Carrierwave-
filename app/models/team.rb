class Team < ApplicationRecord
  has_many :user

  validates :name, uniqueness: true
  
end
