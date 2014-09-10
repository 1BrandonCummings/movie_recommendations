class HomeController < ApplicationController
  def index
  	@recommendations = Recommendation.all
  end
end
