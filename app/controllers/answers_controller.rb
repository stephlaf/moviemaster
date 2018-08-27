class AnswersController < ApplicationController
  before_action :set_answer, only: [ :show ]
  before_action :set_question, only: [ :show ]
  before_action :set_movie, only: [ :show ]
  before_action :check_response, only: [ :show ]
  before_action :set_score, only: [ :show ]

  def show
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def set_question
    @question = @answer.question
  end

  def set_movie
    @movie = @question.movie
  end

  def check_response
    Response.create(user: current_user, answer: @answer) if @answer.correct?
  end

  def set_score
    @score = 0
    current_user.responses.each do |response|
      @score += 10 if (response.correct? && response.movie == @movie)
    end
    return @score
  end

end
