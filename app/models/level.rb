class Level < ApplicationRecord
  has_one :lens

  def name
    self.lens.title
  end
end
