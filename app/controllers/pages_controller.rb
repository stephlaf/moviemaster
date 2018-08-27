class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @levels = Level.first(3)
  end

  def end
  end
end
