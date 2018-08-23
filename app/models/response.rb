class Response < ApplicationRecord
  belongs_to :user
  belongs_to :answer

  def correct?
    self.answer.correct
  end
end
