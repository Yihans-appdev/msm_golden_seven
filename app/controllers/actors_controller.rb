class ActorsController < ApplicationController
  def new_form
    render("new_form")
  end
  
  def create_row
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:Dob]
    @actor.bio = params[:Bio]
    @actor.image_url = params[:image_url]
    @actor.save
    
    redirect_to("/actors")
  end
  
  def index
    @actors = Actor.all
  end
  
  def detail
    @actor = Actor.find(params[:id])
  end
  
  def delete
    @actor = Actor.find(params[:id])
    @actor.destroy
    
    redirect_to("/actors")
  end
  
  def edit_form
    @actor = Actor.find(params[:id])
    render("edit_form")
  end
  
  def update
    @actor = Actor.find(params[:id])
    @actor.name = params[:name]
    @actor.dob = params[:Dob]
    @actor.bio = params[:Bio]
    @actor.image_url = params[:image_url]
    @actor.save
    
    redirect_to("/actors/" + params[:id])
  end
  
end