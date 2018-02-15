class MoviesController < ApplicationController
  def search
  	@tab = nil
  	@research = params[:movie]
  	@tab = SearchMovie.new(@research).perform
  end

 
end
