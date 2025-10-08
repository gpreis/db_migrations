class Movie < ApplicationRecord
  validates :description, presence: true
end
