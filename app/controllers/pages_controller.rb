class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    x = current_user.level.number + 1
    x =3 if x == 2
    @levels = Level.first(x)
    @lenses = Lens.first(x)
  end

  def end
  end
end
