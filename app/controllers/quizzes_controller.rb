class QuizzesController < ApplicationController
  before_action :set_movie, only: [ :show ]
  before_action :set_questions, only: [ :show ]
  before_action :set_responses, only: [ :show ]
  before_action :set_remaining_questions, only: [ :show ]
  before_action :set_score, only: [ :show ]

  def show
  end



  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def set_questions
    @questions = @movie.questions
  end

  def set_responses
    @responses = []
    current_user.responses.each do |response|
      @responses << response if response.movie == @movie
    end
    return @responses
  end

  def set_remaining_questions
    @remaining_questions = []
    @remaining_questions.concat @questions
    if @responses.count > 0
      @responses.each do |response|
        @remaining_questions.delete(response.question) if response.correct?
      end
    end
    return @remaining_questions
  end


  def set_score
    @score = 0
    @responses.each do |response|
      @score += 10 if response.correct?
    end
    return @score
  end

end
