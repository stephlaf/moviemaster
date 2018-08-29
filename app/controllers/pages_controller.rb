class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @levels = Level.all
    @lenses = Lens.all
  end

  def end
  end
end
