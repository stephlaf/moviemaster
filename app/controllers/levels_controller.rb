class LevelsController < ApplicationController
  def show
    @level = Level.find_by(number: 2)
    # @movie = 
  end
end
