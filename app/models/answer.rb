class Answer < ApplicationRecord
  belongs_to :question
  has_one :movie, through: :question
end
