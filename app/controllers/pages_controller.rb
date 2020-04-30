class PagesController < ApplicationController
  def home
    @businesses = Business.last(6)
  end

  def about
  end
end
