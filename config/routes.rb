Rails.application.routes.draw do
  # resources :audios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: 'audios#new'
  post '/audio', to: 'audios#create'
  post '/search', to: 'videos#search'

  get '/videos', to: 'videos#index'

end
