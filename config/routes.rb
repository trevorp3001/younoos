Rails.application.routes.draw do
  
  resources :articles do

  	resources :comments

  	resources :likes

  	resources :users


  end

  resources :users

 
  resource :session


  root "articles#index"


end
