Rails.application.routes.draw do
  
  resources :favorites
  resources :users
  resources :businesses
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  #custom route -
  #get ‘/nameofroute’, to ‘productions#index”
end
