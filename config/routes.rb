Rails.application.routes.draw do
  root 'static_pages#home'

  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get '/profile/:id', to: 'users#show'
end
