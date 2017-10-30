class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @categories = %w(indian sushi french)
  end

end
