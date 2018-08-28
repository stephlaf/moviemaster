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

end
