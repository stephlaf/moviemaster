class Movie < ApplicationRecord
  belongs_to :level
  has_many :questions
  has_many :answers, through: :questions

  def level_number
    self.level.number
  end

  def score(user)
    @score = 0
    user.responses.each do |response|
      @score += 10 if response.movie == self && response.correct?
    end
    return @score
  end

  def completed?(user)
    score(user) == 100
  end
end
