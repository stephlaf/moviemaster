class Question < ApplicationRecord
  belongs_to :movie
  has_many :answers
end
