class Response < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  has_one :question, through: :answer
  has_one :movie, through: :question

  def correct?
    self.answer.correct
  end

end
