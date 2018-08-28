class LevelsController < ApplicationController
  def show
    @level = Level.find(params[:id])
    # @movie =
  end
end
