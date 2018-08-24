class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :level
  has_many :responses
  has_many :answers, through: :responses
  has_many :questions, through: :answers
  has_many :movies, through: :questions

  def level_number
    self.level.number
  end

  # def score
  #   # user.score will return a hash, where the key is movie.id.to_s and the value is the number of correct responses that the user has given for that movie
  #   @scores = {}
  #   correct_responses = self.answers.where(correct: true)
  #   movies.each do |movie|
  #     @scores["#{movie.id}"] = 0
  #   end

  #   self.movies.each do |movie|
  #     correct_responses.each do |response|
  #       @scores["#{movie.id}"] += 1 if response.movie == movie
  #     end

  #   end
  #   return @scores
  # end

end
