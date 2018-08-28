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

  def level_up!
    new_rank = self.level.number + 1
    new_level = Level.find_by(number: new_rank)
    self.level = new_level
    self.save
  end

  def level_up?
    current_level = Level.find_by(number: self.level.number)
    level_up! if current_level.completed?(self)
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
