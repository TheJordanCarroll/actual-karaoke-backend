Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/me", to: "users#show"
  post "/signin", to: "users#signin"
  post "/login", to: "users#login"
  patch "/me", to: "users#update"
  
  get '/genres', to: 'genres#index'
  get '/genres/new', to: 'genres#new', as: 'new_genre'
  post '/genres', to: 'genres#create'
  get '/genres/:id', to: 'genres#show'
  get '/genres/:id/edit', to: 'genres#edit', as: 'edit_genre'
  delete '/genres/:id', to: 'genres#destroy'
  patch '/genres/:id', to: 'genres#update'

  get '/songs', to: 'songs#index'
  get '/songs/new', to: 'songs#new', as: 'new_song'
  post '/songs', to: 'songs#create'
  get '/songs/:id', to: 'songs#show'
  get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  delete '/songs/:id', to: 'songs#destroy'
  patch '/songs/:id', to: 'songs#update'
  get '/search', to: 'songs#search'


  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists', to: 'artists#create'
  get '/artists/:id', to: 'artists#show'
  get '/artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
  delete '/artists/:id', to: 'artists#destroy'
  patch '/artists/:id', to: 'artists#update'

  get '/favorite_songs', to: 'favorite_songs#index'
  get '/favorite_songs/new', to: 'favorite_songs#new', as: 'new_favorite_song'
  post '/favorite_songs', to: 'favorite_songs#create'
  get '/favorite_songs/:id', to: 'favorite_songs#show'
  get '/favorite_songs/:id/edit', to: 'favorite_songs#edit', as: 'edit_favorite_song'
  delete '/favorite_songs/:id', to: 'favorite_songs#destroy'
  patch '/favorite_songs/:id', to: 'favorite_songs#update'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  # get '/users/:id', to: 'users#show'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  delete '/users/:id', to: 'users#destroy'
  patch '/users/:id', to: 'users#update'
end
