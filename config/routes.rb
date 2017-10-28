Rails.application.routes.draw do
  #Route for bare domain
  get('/', { :controller => "movies", :action => "index"})
  
  #Routes for Director
  #CREATE
  get('/directors/new_form', { :controller => "directors", :action => "new_form"})
  get('/directors/create_director', { :controller => "directors", :action => "create_row"})
  
  #READ
  get('/directors', { :controller => "directors", :action => "index"})
  get('/directors/:id', { :controller => "directors", :action => "detail"})
  
  #EDIT
  get('/directors/:id/edit', { :controller => "directors", :action => "edit_form"})
  get('/directors/:id/update', { :controller => "directors", :action => "update"})
  
  #DELETE
  get('/directors/delete_director/:id', { :controller => "directors", :action => "delete"})
  
  #-----------------------------------------------------------
  
  #Routes for Actor
  #CREATE
  get('/actors/new_form', { :controller => "actors", :action => "new_form"})
  get('/actors/create_actor', { :controller => "actors", :action => "create_row"})
  
  #READ
  get('/actors', { :controller => "actors", :action => "index"})
  get('/actors/:id', { :controller => "actors", :action => "detail"})
  
  #EDIT
  get('/actors/:id/edit', { :controller => "actors", :action => "edit_form"})
  get('/actors/:id/update', { :controller => "actors", :action => "update"})
  
  #DELETE
  get('/actors/delete_actor/:id', { :controller => "actors", :action => "delete"})
  
  
  #-----------------------------------------------------------
  
  #Routes for Movie
  #CREATE
  get('/movies/new_form', { :controller => "movies", :action => "new_form"})
  get('/movies/create_movie', { :controller => "movies", :action => "create_row"})
  
  #READ
  get('/movies', { :controller => "movies", :action => "index"})
  get('/movies/:id', { :controller => "movies", :action => "detail"})
  
  #EDIT
  get('/movies/:id/edit', { :controller => "movies", :action => "edit_form"})
  get('/movies/:id/update', { :controller => "movies", :action => "update"})
  
  #DELETE
  get('/movies/delete_movie/:id', { :controller => "movies", :action => "delete"})
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
