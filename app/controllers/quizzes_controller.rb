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
    @questions.each do |question|
      unless question.user_response(current_user).nil? || question.user_response(current_user).correct?
        @remaining_questions << question
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
