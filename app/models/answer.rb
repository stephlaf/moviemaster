class Answer < ApplicationRecord
  belongs_to :question
  has_one :movie, through: :question
  has_many :responses

  def correct?
    self.correct
  end
end
