class HomeController < ApplicationController
  def index
  	@recommendations = Recommendation.all
    @not_seen_movies = Recommendation.where(watched: false).all
  end 

  def recs

  		@all_movies	= Tmdb::Movie.now_playing

  end

  def upvote
  	@recommendation = Recommendation.find(params[:id])
  	@recommendation.votes += 1
  	 @recommendation.save
  	 redirect_to '/'

  end

  def seen

  	@seen_movies = Recommendation.where(watched: true).all

  end


end
