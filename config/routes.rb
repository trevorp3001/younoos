Rails.application.routes.draw do
  
  resources :articles do

  	resources :comments

  	resources :likes


  end




  root "articles#index"


end
