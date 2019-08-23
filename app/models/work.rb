class Work < ApplicationRecord
  has_many :user

  # enum role: [:works]
  
  scope :works, -> { Work.all }
end
