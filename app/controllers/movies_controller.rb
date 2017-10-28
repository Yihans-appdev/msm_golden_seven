class MoviesController < ApplicationController
  def new_form
    render("new_form")
  end
  
  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save
    
    redirect_to("/movies")
  end
  
  def index
    @movies = Movie.all
  end
  
  def detail
    @movie = Movie.find(params[:id])
  end
  
  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy
    
    redirect_to("/movies")
  end
  
  def edit_form
    @movie = Movie.find(params[:id])
    render("edit_form")
  end
  
  def update
    @movie = Movie.find(params[:id])
    @movie.name = params[:name]
    @movie.dob = params[:Dob]
    @movie.bio = params[:Bio]
    @movie.image_url = params[:image_url]
    @movie.save
    
    redirect_to("/movies/" + params[:id])
  end
  
end