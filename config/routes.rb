Rails.application.routes.draw do
root 'users#index'

get 'users/new', to: 'users#new'

post 'users/', to: 'users#create'

get 'users/:id', to: 'users#show', as: 'user'

post 'users/:id', to: 'users#show'

get '/signin', to: 'sessions#new', as: 'login'

post '/signin', to: 'sessions#create'

get '/signout', to: 'sessions#destroy'



get '/attractions', to: 'attractions#index'

get '/attractions/:id', to: 'attractions#show', as: 'attraction'

get 'attractions/create'

  get 'attractions/edit'

  get 'attractions/update'

  get 'attractions/destroy'



  get 'attractions/show'





  get 'users/edit'

  get 'users/update'

  get 'users/destroy'



end
