class Question < ApplicationRecord
  belongs_to :movie
  has_many :answers
  has_many :responses, through: :answers

  def user_response(user)
    self.responses.where(user: user)[0]
  end
end
