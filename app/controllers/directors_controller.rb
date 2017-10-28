class DirectorsController < ApplicationController
  def new_form
    render("new_form")
  end
  
  def create_row
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:Dob]
    @director.bio = params[:Bio]
    @director.image_url = params[:image_url]
    @director.save
    
    redirect_to("/directors")
  end
  
  def index
    @directors = Director.all
  end
  
  def detail
    @director = Director.find(params[:id])
  end
  
  def delete
    @director = Director.find(params[:id])
    @director.destroy
    
    redirect_to("/directors")
  end
  
  def edit_form
    @director = Director.find(params[:id])
    render("edit_form")
  end
  
  def update
    @director = Director.find(params[:id])
    @director.name = params[:name]
    @director.dob = params[:Dob]
    @director.bio = params[:Bio]
    @director.image_url = params[:image_url]
    @director.save
    
    redirect_to("/directors/" + params[:id])
  end
  
end