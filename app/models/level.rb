class Level < ApplicationRecord
  has_one :lens
  has_many :movies

  def name
    self.lens.title
  end

  def completed?(user)
    @response = true
    self.movies.each do |movie|
      @response = false unless movie.completed?(user)
    end
    return @response
  end


  def score(user)
    @score = 0
    self.movies.each do |movie|
      @score += movie.score(user)
    end
    return @score
  end

  def now_playing?(user)
    self.number == user.level.number
  end

  def unlocked?(user)
    self.number <= user.level.number
  end

  def description
    self.lens.description
  end
end
