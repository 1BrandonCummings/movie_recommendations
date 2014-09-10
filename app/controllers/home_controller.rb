class HomeController < ApplicationController
  def index
  	@recommendations = Recommendation.all

  end 


  def upvote
  	@recommendation = Recommendation.find(params[:id])
  	@recommendation.votes += 1
  	 @recommendation.save
  	 redirect_to '/'

  end


end
