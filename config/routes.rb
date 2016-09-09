Rails.application.routes.draw do
  resources :musicians, :artists, :albums, :genres, :labels, :tracks
  root 'albums#index'
  get "genres" => 'genres#index'
  get "artists" => 'artists#index'
  get "albums" => 'albums#index'
  get 'search' => "musicians#search"
end
