class Movie < ApplicationRecord
  belongs_to :level
  has_many :questions
  has_many :answers, through: :questions

  def level_number
    self.level.number
  end
end
