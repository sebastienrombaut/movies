Rails.application.routes.draw do
  get 'movies/search'
  root 'movies#search'
  
  resources :movies

end
