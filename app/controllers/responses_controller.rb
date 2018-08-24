class ResponsesController < ApplicationController
  before_action :set_answer
  before_action :new_response?

  def new
    @response = Response.new
  end

  def show
  end

  def create
    if new_response?
      @response = Response.new
      @response.answer = @answer
      @response.user = current_user
      @response.save
      redirect_to quiz_path(@question.movie.id)
    else
      update
    end
  end

  def update
    if new_response?
      create
    else
      @response.update(answer: @answer)
    end
    redirect_to quiz_path(@question.movie.id)
  end

  private

  def set_answer
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def new_response?
    @question.user_response(current_user).nil?
  end

end
