class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @movies = Movie.all
  end


  private
  def movie_params
    params.require(:movie).permit(:title, :description,:language, :release_date, :movie_image)
  end
end