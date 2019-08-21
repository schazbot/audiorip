Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :songs, only: [:index, :show]
  resources :user_songs, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: 'audios#new'
  post '/audio', to: 'audios#create'
  post '/search', to: 'videos#search'

  get '/videos', to: 'videos#index'

end
