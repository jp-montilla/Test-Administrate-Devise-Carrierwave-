class User < ApplicationRecord
  belongs_to :work
  belongs_to :team

  validates :name, uniqueness: true

end
