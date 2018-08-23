class Movie < ApplicationRecord
  belongs_to :level

  def level_number
    self.level.number
  end
end
