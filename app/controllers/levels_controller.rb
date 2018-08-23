class LevelsController < ApplicationController
  def show
    @levels = Level.first(2)
  end
end
