class Level < ApplicationRecord
  has_one :lens
  has_many :movies

  def name
    self.lens.title
  end

  def description
    self.lens.description
  end
end
