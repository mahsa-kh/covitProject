class PagesController < ApplicationController
  def home
    @businesses = Business.last(6)
  end
end
