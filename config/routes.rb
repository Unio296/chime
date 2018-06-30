Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  #login
  get 'auth/:provider/callback', to: 'sessions#create'
  #logout
  get '/logout', to: 'sessions#destroy'
  
  get '/timeline', to: 'tweets#timeline'
  post '/tweet', to: 'tweets#tweet', as: :tweet


end
